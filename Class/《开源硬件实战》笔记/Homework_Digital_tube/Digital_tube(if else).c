void setup()
{
  Serial.begin(9600);
  pinMode(2, OUTPUT);
  pinMode(3, OUTPUT);
  pinMode(4, OUTPUT);
  pinMode(5, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(7, OUTPUT);
  pinMode(8, OUTPUT);
}

void loop()
{
  int num;
  num = Serial.read() - '0';
  if(num == 0)
  {
    digitalWrite(2, HIGH);
   	digitalWrite(3, HIGH);
   	digitalWrite(4, HIGH);
   	digitalWrite(5, HIGH);
   	digitalWrite(6, HIGH);
  	digitalWrite(7, HIGH);
   	digitalWrite(8, LOW);
  }
  else if(num == 1)
  {
    digitalWrite(2, LOW);
    digitalWrite(3, HIGH);
    digitalWrite(4, HIGH);
    digitalWrite(5, LOW);
    digitalWrite(6, LOW);
    digitalWrite(7, LOW);
    digitalWrite(8, LOW);
  }
  else if(num == 2)
  {
    digitalWrite(2, HIGH);
   	digitalWrite(3, HIGH);
   	digitalWrite(4, LOW);
   	digitalWrite(5, HIGH);
   	digitalWrite(6, HIGH);
   	digitalWrite(7, LOW);
  	digitalWrite(8, HIGH);
  }
  else if(num == 3)
  {
   	digitalWrite(2, HIGH);
   	digitalWrite(3, HIGH);
   	digitalWrite(4, HIGH);
   	digitalWrite(5, HIGH);
   	digitalWrite(6, LOW);
   	digitalWrite(7, LOW);
   	digitalWrite(8, HIGH);
  }
  else if(num == 4)
  {
   	digitalWrite(2, LOW);
   	digitalWrite(3, HIGH);
   	digitalWrite(4, HIGH);
   	digitalWrite(5, LOW);
   	digitalWrite(6, LOW);
   	digitalWrite(7, HIGH);
   	digitalWrite(8, HIGH);
  }
  else if(num == 5)
  {
   	digitalWrite(2, HIGH);
   	digitalWrite(3, LOW);
   	digitalWrite(4, HIGH);
  	digitalWrite(5, HIGH);
   	digitalWrite(6, LOW);
   	digitalWrite(7, HIGH);
   	digitalWrite(8, HIGH);
  }
  else if(num == 6)
  {
   	digitalWrite(2, HIGH);
   	digitalWrite(3, LOW);
   	digitalWrite(4, HIGH);
   	digitalWrite(5, HIGH);
   	digitalWrite(6, HIGH);
   	digitalWrite(7, HIGH);
   	digitalWrite(8, HIGH);
  }
  else if(num == 7)
  {
   	digitalWrite(2, HIGH);
   	digitalWrite(3, HIGH);
   	digitalWrite(4, HIGH);
   	digitalWrite(5, LOW);
   	digitalWrite(6, LOW);
   	digitalWrite(7, LOW);
    digitalWrite(8, LOW);;
  }
  else if(num == 8)
  {
    digitalWrite(2, HIGH);
   	digitalWrite(3, HIGH);
   	digitalWrite(4, HIGH);
   	digitalWrite(5, HIGH);
   	digitalWrite(6, HIGH);
    digitalWrite(7, HIGH);
   	digitalWrite(8, HIGH);
  }
  else if(num == 9)
  {
    digitalWrite(2, HIGH);
   	digitalWrite(3, HIGH);
   	digitalWrite(4, HIGH);
   	digitalWrite(5, HIGH);
   	digitalWrite(6, LOW);
    digitalWrite(7, HIGH);
   	digitalWrite(8, HIGH);
  }
}