/*
 * alkalne_reuse_software.c
 *
 * Created: 01/04/2020
 * Author : snoiry.com
 */

#define F_CPU (1000000UL) // 1 MHz
#define MinVoltage 10 // min voltage for charging
#define MaxVoltage 20 // max voltage for charging
#define MinTemperature 10 // min temperature for charging (basically prevent from sensor error)
#define MaxTemperature 20 // max temperature for charging
#define voltageHysteresis 2 // tolerance for voltage hysteresis
#define temperatureHysteresis 2 // tolerance for temperature hysteresis

#include <avr/io.h>
#include <util/delay.h>

uint8_t chargeState = 0;
uint8_t voltageState = 0; // 1 for under voltage, 2 for charging, 3 for over voltage / charge finished, 0 for none
uint8_t temperatureState = 0; //  0 for OK or none, 1 for under temperature, 2 for overheat

void check() {
	chargeState = 1;
	// check voltage
	ADMUX = 0b00000000; // ADC multiplexer PB0
	ADCSRA |= (1 << ADSC); // start conversion
	while(ADCSRA & (1 << ADSC)); // wait until complete
	if(voltageState == 0){
		if(ADCL < MinVoltage){
			voltageState = 1; // under voltage
			chargeState = 0; // cannot be charged
		}
		else if(ADCL > MaxVoltage){
			voltageState = 3; // over voltage
			chargeState = 0; // cannot be charged
		}
	}
	else if(voltageState == 1){
		if(ADCL < (MinVoltage + voltageHysteresis)){
			chargeState = 0;
		}
		else{
			if(ADCL <= MaxVoltage){
				voltageState = 0;
			}
			else{
				voltageState = 2;
				chargeState = 0;
			}
		}
	}
	else if(voltageState == 2){
		if(ADCL > (MaxVoltage - voltageHysteresis)){
			chargeState = 0; // cannot be charged
		}
		else{
			if(ADCL >= MinVoltage){
				voltageState = 0;
			}
			else{
				voltageState = 1;
				chargeState = 0;
			}
		}
	}

	// check temperature
	ADMUX = 0b00000001; // ADC multiplexer PB1
	ADCSRA |= (1 << ADSC); // start conversion
	while(ADCSRA & (1 << ADSC)); // wait until complete
	if(temperatureState == 0){
		if(ADCL < MinTemperature){
			temperatureState = 1; // under voltage
			chargeState = 0; // cannot be charged
		}
		else if(ADCL > MaxTemperature){
			temperatureState = 3; // over voltage
			chargeState = 0; // cannot be charged
		}
	}
	else if(temperatureState == 1){
		if(ADCL < (MinTemperature + temperatureHysteresis)){
			chargeState = 0;
		}
		else{
			if(ADCL <= MaxTemperature){
				temperatureState = 0;
			}
			else{
				temperatureState = 2;
				chargeState = 0;
			}
		}
	}
	else if(temperatureState == 2){
		if(ADCL > (MaxTemperature - temperatureHysteresis)){
			chargeState = 0; // cannot be charged
		}
		else{
			if(ADCL >= MinTemperature){
				temperatureState = 0;
			}
			else{
				temperatureState = 1;
				chargeState = 0;
			}
		}
	}
}

int main(void)
{
	DDRB = 0b00000100; // set inputs and outputs
  PORTB = 0b0000000; // outputs set to LOW and input set to h-Z
	DIDR0 = 0b00000011; // disable digital input for ADC inputs
    while (1)
    {
		check();
		if(chargeState == 1){
			for(int i = 0; i < 160; i++){
				 PORTB = 0b0000100;
				 _delay_ms(120);
				 PORTB = 0b0000000;
				 _delay_ms(5);
			}
		}
		else{
			_delay_ms(10000);
		}
    }
}
