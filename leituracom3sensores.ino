int sensor = 0;
int sensor1 = 0;
int sensor2 = 0;
unsigned long tempo = 0;
char comma = ', ';

void setup() {
  Serial.begin(9600);
}

void loop() {
  sensor=analogRead(A0);
  sensor1=analogRead(A1);
  sensor2=analogRead(A2);
  tempo=millis();
  Serial.print("S:");
  Serial.print(sensor);
  Serial.print(comma);
  Serial.print("S1:");
  Serial.print(sensor1);
  Serial.print(comma);
  Serial.print("S2:");
  Serial.print(sensor2);
  Serial.print(comma);
  Serial.print("T:");
  Serial.print(tempo);
  Serial.print("\n");
  delay(50);
}

