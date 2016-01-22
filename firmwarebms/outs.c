
#include "main.h"
#include "outs.h"

void set_buzer(char buzer)
{
  if (buzer)
    SBI(PORTB, BUZZER);
  else
    CBI(PORTB, BUZZER);
}

void set_main_relay(char cutmains)
{
  if (cutmains)
    SBI(PORTC, RELON);
  else
    CBI(PORTC, RELON);
}

void set_charger_disabled(char charger_off)
{
  if (charger_off)
    SBI(PORTD, STOP_CHARGER);
  else
    CBI(PORTD, STOP_CHARGER);  
}
