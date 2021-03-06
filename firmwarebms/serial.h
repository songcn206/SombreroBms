//
// The BMS can receive commands:
//
// Each command finishes with a return char '\n'.
// And will result in the interrupt callback to send a string back.
//
//-------------------------------------------------------------------------------------
// "ping\n"
//
// Returns something like:
//
// Sombrero BMS C2015-2016 Vreemdelabs.com
// Firmware Version: 1.0
// '\0'
//
//-------------------------------------------------------------------------------------
// "get_params\n"
//
// Returns all the configuration information in the following format:
//
// setup date: dd/mm/yyyy
// charge: 80%
// total capacity: 60AH
// Vbat: 36,23V
// Elements: 11
// charge cycles: 123
// total charging time: 56h
// Vmin: 2,9V
// Vmax: 3,6V
// MaxVbat: 36,50V
// undervoltage events: 0
// maxdischarge: 252A
// average discharge: 50A
// serial number: 12345678
// client: "golf des paquerettes"       // 32 chars maximum
// uptime: 0years 3days 5h
// max recorded temp: 40�C
// max temperature: 60�C
// min recorded temp: -4�C
// min temperature: -20�C
// temperature: 23�C
// '\0'
//
//-------------------------------------------------------------------------------------
// "set_param -valuename value\n"
//
// valuename:
//   date      dd/mm/yyyy
//   batVmin         2800              // In mV
//   batVmax         3600
//   tmin             -20
//   tmax              75              // Use someting low, like 60�C
//   fullcharge     60000              // In mAH
//   fullVbat          36              // In Volts
//   serial      12345678
//   client      "golf des paquerettes"
//
// Example: set_param -client  "golf des paquerettes"
//          set_param -date    "10/02/2017"
//          set_param -batVmin 2900
//
// Note that bat elements comes from the firmware version 
//
//-------------------------------------------------------------------------------------
//
// "get_report\n"
//
// Returns each battery information + current + totalvbat + machine_state + charge
// Not too verbose in order to send it fast and often
//
// bmsReportBegin
// Vbat: 35,56
// chrg: 80
// chrgmAH: 40000
// ImA: 56323
// state: RUN
// Elts: 11
// temp: 23                      // �C this is the maximum temperature over the board
// batbegin:  1
// Vb: 3,230                     // V
// Lowest: 2,83                  // V
// evt: 2                        // undervoltage events
// avgchgt: 4567                 // charge time average in seconds more = more capacity
// balan: 1
// batbegin: 2
// ....
// batbegin: 11
// Vb: 3,210
// Lowest: 2,92                   // V
// evt: 0
// avgchgt: 4643
// balan: 0
// bmsReportEnd
// '\0'
//

// With 1K of memory, we will send line by line with a 64bytes buffer
// and change states when sending the '\n' at the end of the line.
#define SER_STATE_IDLE                   0
#define SER_STATE_SEND_PING1             1
#define SER_STATE_SEND_PING2             2
#define SER_STATE_SEND_PING3             3

#define SER_STATE_SEND_DATE             10
#define SER_STATE_SEND_CHARGE           11
#define SER_STATE_SEND_TOTALCAP         12
#define SER_STATE_SEND_VBAT             13
#define SER_STATE_SEND_ELEMENTS         14
#define SER_STATE_SEND_CHARGECYCLES     15
#define SER_STATE_SEND_TOTALCHRGTIME    16
#define SER_STATE_SEND_VMAX             17
#define SER_STATE_SEND_VMIN             18
#define SER_STATE_SEND_MAX_VBAT         19
#define SER_STATE_SEND_UNDERVOLTAGEEVTS 20
#define SER_STATE_SEND_MAXDISCHARGE     21
#define SER_STATE_SEND_SERIAL           22
#define SER_STATE_SEND_CLIENT           23
#define SER_STATE_SEND_UPTIME           24
#define SER_STATE_SEND_MAXT_RECORD      25
#define SER_STATE_SEND_MAXT             26
#define SER_STATE_SEND_MINT_RECORD      27
#define SER_STATE_SEND_MINT             28
#define SER_STATE_SEND_HITEMP           29

// A battery element counter is also used on top of the state
#define SER_STATE_SEND_REPORT_START     50
#define SER_STATE_SEND_REPORT_VB        51
#define SER_STATE_SEND_REPORT_CHRG      52
#define SER_STATE_SEND_REPORT_CHRGMA    53
#define SER_STATE_SEND_REPORT_IMA       54
#define SER_STATE_SEND_REPORT_STATE     55
#define SER_STATE_SEND_REPORT_ELTS      56
#define SER_STATE_SEND_REPORT_TEMP      57
#define SER_STATE_SEND_REPORT_BATBEGIN  58
#define SER_STATE_SEND_REPORT_BATVB     59
#define SER_STATE_SEND_REPORT_BATVLOW   60
#define SER_STATE_SEND_REPORT_BATEVT    61
#define SER_STATE_SEND_REPORT_BATAVGT   62
#define SER_STATE_SEND_REPORT_BATBALANC 63
#define SER_STATE_SEND_REPORT_END       64
#define SER_STATE_SEND_REPORT_FINISHED  65

#define SER_STATE_SEND_DEBUG            99
#define SER_STATE_RECEIVE              100
#define SER_STATE_CRC                  101
#define SER_STATE_WAIT_ENDOF_MESSAGE   102

#define SER_STATE_ENDOF_MSG            120

// Only used in the simulator to test the serial link
char change_TX_state(char TXstate);
void process_serial_command(void);

void serial_RX_Ir(char received);

