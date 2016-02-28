#include <stdio.h>
#include <string.h>

#include <avr/pgmspace.h>
#include <avr/io.h>
#include <avr/interrupt.h>

#include "uart.h"
#include "serial.h"

extern t_serialport g_serial;

void uart_init(unsigned int baudrate)
{
  // Set baud rate
  UBRR0H = (unsigned char)(baudrate >> 8);
  UBRR0L = (unsigned char)baudrate;
  // Enable receiver and transmitter + interrupts
  UCSR0B = (1 << RXCIE0) | (1 << TXCIE0) | (1 << RXEN0) | (1 << TXEN0);
  // Set frame format: asynchronous, 8data, no parity, 1 stop bit
  UCSR0C = (3 << UCSZ00);
  init_serial_vars();
}

// Only used for debug purposes
void uart_puts(char *str)
{
  if (g_serial.RXstate == SER_STATE_IDLE)
    {
      snprintf(g_serial.outbuffer, TRSTRINGSZ, "%s", str);
      g_serial.TXstate = SER_STATE_SEND_DEBUG;
      g_serial.outsize = strlen(g_serial.outbuffer);
      g_serial.outindex = 0;
      // Start the transmission
      if (g_serial.outindex < g_serial.outsize)
	{
	  UDR0 = g_serial.outbuffer[g_serial.outindex++];
	}
    }
}

// RX interrupt
ISR(USART_RX_vect, ISR_BLOCK)
{
  char received;

  received = UDR0;
  g_serial.RXstate = SER_STATE_RECEIVE;
  g_serial.inbuffer[g_serial.inindex++] = received;
  if (received == '\n' ||
      g_serial.inindex >= g_serial.insize ||
      g_serial.inindex >= RCVSTRINGSZ)
    {
      g_serial.RXstate = SER_STATE_IDLE;
      if (received == '\n' && g_serial.inindex < RCVSTRINGSZ) // Otherwise there is an error somewhere
	{
	  g_serial.inbuffer[g_serial.inindex] = 0; // Add an end to form a string
	  process_serial_command();
	}
      g_serial.RXstate = SER_STATE_IDLE;
    }
}

// TX interrupt
ISR(USART_TX_vect, ISR_BLOCK)
{
  // The last byte was sent, send another one if available
  if (g_serial.outindex < g_serial.outsize)
    {
      // Put data into buffer, sends the data
      UDR0 = g_serial.outbuffer[g_serial.outindex++];
    }
  else
    {
      g_serial.TXstate = change_TX_state(g_serial.TXstate);
      if (g_serial.TXstate != SER_STATE_IDLE && g_serial.outsize != 0)
	UDR0 = g_serial.outbuffer[g_serial.outindex++];
    }
}

void send_first_byte(char byte)
{
  UDR0 = byte;
}