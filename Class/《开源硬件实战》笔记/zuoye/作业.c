#include <MsTimer2.h>
#define IN1 3
#define IN2 4
#define IN3 5
#define IN4 6

#define S1 7
#define S2 8

#define LT 10
#define BT 9
#define T 1000

int pinInterrupt = 2;
int tick = 0;
int m = -1;
byte n = 0;
byte income = 0;

void down();

void onChange()
{
	delay(20);
    tick = 0;
    m = -1;
}

void setup()
{
    pinMode(pinInterrupt, INPUT);
    pinMode(IN1, OUTPUT);
    pinMode(IN2, OUTPUT);
    pinMode(IN3, OUTPUT);
    pinMode(IN4, OUTPUT);
    pinMode(S1, OUTPUT);
    pinMode(S2, OUTPUT);
    pinMode(LT, OUTPUT);
    pinMode(BT, OUTPUT);

    Serial.begin(9600);
    attachInterrupt(digitalPinToInterrupt(pinInterrupt), onChange, CHANGE);
}
void loop()
{
    digitalWrite(LT, HIGH);
    digitalWrite(BT, HIGH);

    digitalWrite(S1, HIGH);
    digitalWrite(S2, HIGH);
    
    if (tick == 100)
        tick = 0;
    Serial.print("timer ");
    Serial.println(tick);
    income = (tick % 10) - '0';
    if (tick % 10 == 0)
		m++;
	if (m == 10)
        m = 0; 
	n = m - '0';
	
    digitalWrite(S1, LOW);
    digitalWrite(IN1, n & 0x1);
    digitalWrite(IN2, (n >> 1) & 0x1);
    digitalWrite(IN3, (n >> 2) & 0x1);
    digitalWrite(IN4, (n >> 3) & 0x1);
    digitalWrite(S1, HIGH);

    digitalWrite(S2, LOW);
    down();
    digitalWrite(IN1, income & 0x1);
    digitalWrite(IN2, (income >> 1) & 0x1);
    digitalWrite(IN3, (income >> 2) & 0x1);
    digitalWrite(IN4, (income >> 3) & 0x1);
    digitalWrite(S2, HIGH);
    tick++;
	delay(T);
}

void down() {
    digitalWrite(IN1, HIGH);
    digitalWrite(IN2, HIGH);
    digitalWrite(IN3, HIGH);
    digitalWrite(IN4, HIGH);
}
