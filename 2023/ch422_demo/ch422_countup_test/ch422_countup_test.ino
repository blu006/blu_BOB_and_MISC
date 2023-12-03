#define C_CH422_SP_SLEEP_OFF (7u)
#define C_CH422_SP_OD_EN_OFF (4u)
#define C_CH422_SP_A_SCAN_OFF (2u)
#define C_CH422_SP_IO_OE_OFF (0u)
#define C_CH422_SP_ADDR (0x48u >> 1u)

#define C_CH422_OC_ADDR (0x46u >> 1u)

#define C_CH422_W_IO0_ADDR (0x70 >> 1u)
#define C_CH422_W_IO1_ADDR (0x72 >> 1u)
#define C_CH422_W_IO2_ADDR (0x74 >> 1u)
#define C_CH422_W_IO3_ADDR (0x76 >> 1u)

#define C_CH422_R_IO_ADDR (0x4D >> 1u)

#define C_MY_CH422_SYSTEM_PARAMETER \
(1 << C_CH422_SP_OD_EN_OFF |\
1 << C_CH422_SP_A_SCAN_OFF |\
1 << C_CH422_SP_IO_OE_OFF)

byte char_lut (uint8_t d)
{
  switch(d) {
    case 0:
      return 0b00111111;
      break;
    case 1:
      return 0b00000110;
      break;
    case 2:
      return 0b01011011;
      break;
    case 3:
      return 0b01001111;
      break;
    case 4:
      return 0b01100110;
      break;
    case 5:
      return 0b01101101;
      break;
    case 6:
      return 0b01111101;
      break;
    case 7:
      return 0b00000111;
      break;
    case 8: 
      return 0b01111111;
      break;
    case 9:
      return 0b01101111;
      break;
    case 10:
      return 0b01110111;
      break;
    case 11:
      return 0b01111100;
      break;
    case 12:
      return 0b00111001;
      break;
    case 13:
      return 0b01011110;
      break;
    case 14:
      return 0b01111001;
      break;
    case 15:
      return 0b01110001;
      break;
    default:
      return 0;
  }
}

#include <Wire.h>

void ch422_dot() {
  Wire.beginTransmission((uint8_t)C_CH422_SP_ADDR);
  Wire.write((byte)C_MY_CH422_SYSTEM_PARAMETER);
  Wire.endTransmission();

  delay(5);

  Wire.beginTransmission((uint8_t)C_CH422_W_IO1_ADDR);
  Wire.write((byte)0x80u);
  Wire.endTransmission();  
}

void write_digit(uint8_t digit, uint8_t number) {
  uint8_t twi_addr = 0;
  switch(digit){
    case 0:
      twi_addr = C_CH422_W_IO0_ADDR;
      break;
    case 1:
      twi_addr = C_CH422_W_IO1_ADDR;
      break;
    case 2:
      twi_addr = C_CH422_W_IO2_ADDR;
      break;
    case 3:
      twi_addr = C_CH422_W_IO3_ADDR;
      break;
    default:
      return;
  }

  while (Wire.transmitting == true) {
    continue;
  }
  
  Wire.beginTransmission(twi_addr);
  Wire.write((byte)char_lut(number & 0xF));
  Wire.endTransmission();
}

void setup() {
  // put your setup code here, to run once:
  Wire.begin();
  Wire.beginTransmission((uint8_t)C_CH422_SP_ADDR);
  Wire.write((byte)C_MY_CH422_SYSTEM_PARAMETER);
  Wire.endTransmission();

  for (uint8_t i = 0; i < 4; i++) {
    write_digit(i, 0);
  }

  Serial.begin(9600);
}

uint8_t m0, m1, m2, m3 = 0;

void loop() {
  uint16_t m = (uint16_t)(millis() >> 4u);
  if ((m & 0xF) != m3)
  {
    m3 = m & 0xF;
    write_digit(3, m3);
  }
  m >>= 4;

  if ((m & 0xF) != m2)
  {
    m2 = m & 0xF;
    write_digit(2, m2);
  }
  m >>= 4;

  if ((m & 0xF) != m1)
  {
    m1 = m & 0xF;
    write_digit(1, m1);
  }
  m >>= 4;
  

  if ((m & 0xF) != m0)
  {
    m0 = m & 0xF;
    write_digit(0, m0);
  }
}
