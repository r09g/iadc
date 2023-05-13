const int inputPIN = 6;
const int outputPIN = 4;
const int dataPIN = 19;
const int clockPIN = 18;
const int selectPIN = 17;

int count;
uint8_t state;

int SPIdata;
int lastcount;
int iterations;
unsigned long starttime;


void setup() {
  // put your setup code here, to run once:

  pinMode(inputPIN, INPUT);
  pinMode(outputPIN, OUTPUT);
  digitalWrite(outputPIN, LOW);

  pinMode(dataPIN, INPUT);
  pinMode(selectPIN, OUTPUT);
  pinMode(clockPIN, OUTPUT);
  digitalWrite(outputPIN, HIGH);
  digitalWrite(selectPIN, HIGH);
  digitalWrite(clockPIN, LOW);

  count = 0;
  state = false;
  iterations = 0;

  Serial.begin(9600);
  starttime = millis();
}



void loop() {
  // put your main code here, to run repeatedly:

  // if at 512th cycle and edge is falling, trigger reset signal
  if(digitalRead(inputPIN) != state) {  // state changed
    if(state == HIGH) {  // falling edge
      count++;
      if(count == 513) {
        count = 0;
        digitalWrite(outputPIN, LOW);
      } else {
        digitalWrite(outputPIN, HIGH);
      }
    } else {
      // do nothing on rising edge
    }
    state = (state == HIGH) ? LOW : HIGH;
  } else {
    // do nothing
  }


  // SPI
  if(count == 10) {
    digitalWrite(selectPIN, LOW);
    SPIdata = 0;
    lastcount = 0;
  } else if((count != lastcount) && (count == 15 ||
            count == 25 ||
            count == 35 ||
            count == 45 ||
            count == 55 ||
            count == 65 ||
            count == 75 ||
            count == 85 ||
            count == 95 ||
            count == 105 ||
            count == 115 ||
            count == 125 ||
            count == 135 ||
            count == 145 ||
            count == 155 ||
            count == 165 ||
            count == 175 ||
            count == 185 ||
            count == 195 ||
            count == 205 ||
            count == 215 ||
            count == 225 ||
            count == 235 ||
            count == 245 ||
            count == 255 ||
            count == 265 ||
            count == 275)) {
    digitalWrite(clockPIN, HIGH);
    //Serial.println((int)(digitalRead(dataPIN)));
    SPIdata = (SPIdata << 1) + (int)(digitalRead(dataPIN));
    lastcount = count;
  } else if((count != lastcount) && (count == 20 ||
            count == 30 ||
            count == 40 ||
            count == 50 ||
            count == 60 ||
            count == 70 ||
            count == 80 ||
            count == 90 ||
            count == 100 ||
            count == 110 ||
            count == 120 ||
            count == 130 ||
            count == 140 ||
            count == 150 ||
            count == 160 ||
            count == 170 ||
            count == 180 ||
            count == 190 ||
            count == 200 ||
            count == 210 ||
            count == 220 ||
            count == 230 ||
            count == 240 ||
            count == 250 ||
            count == 260 ||
            count == 270 ||
            count == 280)) {
    digitalWrite(clockPIN, LOW);
    lastcount = count;
  } else if((count != lastcount) && (count == 290)) {
    digitalWrite(selectPIN, HIGH);
    lastcount = count;
    //Serial.println(SPIdata);

    if(millis() - starttime > 5000) {   // start logging after 5s
      if(iterations == 0) {
        Serial.println("IADC test chip SPI output. Max value = 22500864");
      }
      if(iterations < 1000) {  // first few useless
        iterations++;
        Serial.println(SPIdata);
      }
      if(iterations == 1000) {
        iterations++;
        Serial.println("*** END ***");
      }
    }
  }
}
