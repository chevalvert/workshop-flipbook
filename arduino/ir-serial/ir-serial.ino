// 4 IR sensors

#define SENSOR_A 3
#define SENSOR_B 2
//#define SENSOR_C 4
//#define SENSOR_D 5

int state_A = 0, pstate_A = 0;
int state_B = 0, pstate_B = 0;
//int state_C = 0, pstate_C = 0;
//int state_D = 0, pstate_D = 0;

void setup() {
  pinMode(SENSOR_A, INPUT);
  pinMode(SENSOR_B, INPUT);
//  pinMode(SENSOR_C, INPUT);
//  pinMode(SENSOR_D, INPUT);

  digitalWrite(SENSOR_A, HIGH);
  digitalWrite(SENSOR_B, HIGH);
//  digitalWrite(SENSOR_C, HIGH);
//  digitalWrite(SENSOR_D, HIGH);

  Serial.begin(9600);
}

void loop() {
  state_A = digitalRead(SENSOR_A);
  state_B = digitalRead(SENSOR_B);
//  state_C = digitalRead(SENSOR_C);
//  state_D = digitalRead(SENSOR_D);

  if (state_A != pstate_A) Serial.println((state_A == LOW) ? "A0" : "A1");
  if (state_B != pstate_B) Serial.println((state_B == LOW) ? "B0" : "B1");
//  if (state_C != pstate_C) Serial.println((state_C == LOW) ? "C0" : "C1");
//  if (state_D != pstate_D) Serial.println((state_D == LOW) ? "D0" : "D1");

  pstate_A = state_A;
  pstate_B = state_B;
//  pstate_C = state_C;
//  pstate_D = state_D;

  delay(25);
}


