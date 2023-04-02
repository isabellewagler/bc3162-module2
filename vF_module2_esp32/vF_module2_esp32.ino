// Code modeled from ESP32 I/O Documentation for connecting a button 
// source: https://esp32io.com/tutorials/esp32-button#:~:text=One%20button's%20pin%20is%20connected,button%20is%20pressed%20or%20NOT

const int buttonPin = 33;
const int xPin = 12;
const int yPin = 13;


int buttonState;                // current state of the button
int lastButtonState = HIGH;     // previous state of the button


int buttonVal;
int xVal;
int yVal;
int count = 0;

void setup() {
  // put your setup code here, to run once:

  pinMode(buttonPin, INPUT_PULLUP);
  pinMode(xPin, INPUT_PULLUP);
  pinMode(yPin, INPUT_PULLUP);
  Serial.begin(9600); //match baud rate
}

void loop() {

  buttonState = digitalRead(buttonPin);
  xVal = analogRead(xPin);
  yVal = analogRead(yPin);

  // display our data separated by a comma for easy parsing in Processing code
  Serial.print(xVal);
  Serial.print(",");
  Serial.print(yVal);
  Serial.print(",");

    if (lastButtonState == LOW && buttonState == HIGH) {
      // if the current state is HIGH then the button went from off to on:
      // music should play
      Serial.print(1);
      count += 1; //increment button push count - ensures music plays until next button push

    } else if (count % 2 == 0){
      // if the current state is LOW then the button went from on to off:
      //pause music
      Serial.printf("pause");
    }

     else {
      Serial.print(1);
     }

  // Print new line for easy trimming in Processing code
  Serial.print("\n");
  lastButtonState = buttonState;
  delay(100);
}
