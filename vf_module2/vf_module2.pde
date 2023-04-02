import processing.serial.*;
import ddf.minim.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer audio1;

Serial myPort;
String val;

int pan;
int volume;
int buttonOn;


FilePlayer filePlayer1;
String fileName1 = "happy-birthday.mp3";

void setup()
{
  frameRate(240); 

  String portName = Serial.list()[3];
  myPort = new Serial(this, portName, 9600);
  myPort.bufferUntil('\n');
  
  minim = new Minim(this);
  audio1 =minim.loadFile("happy-birthday.mp3");
  filePlayer1 = new FilePlayer (minim.loadFileStream(fileName1));
}

void serialEvent(Serial myPort) 
{
  // read the data until the newline n appears
  val = myPort.readStringUntil('\n');
}

void draw()
{
   if ( myPort.available() > 0) 
  {  // If data is available,
  val = myPort.readStringUntil('\n'); 
  }
    if (val != null)
  {
        val = trim(val);
        
    // split input string from Arduino code
    int[] vals = int(splitTokens(val, ","));
    
    //assign to variables
    volume = vals[0];
    pan = vals[1] ;
    buttonOn = vals[2];
    
    float gain = map(volume, 0, 4095, -15, 15);
    float p = map(pan, 0, 4095, -1, 1);
    //change gain/volume 
    audio1.setGain(gain);
    //change pan (which speaker most of the sound plays from)
    audio1.setPan(p);
    
    println(volume + " " + pan + " " + " " + buttonOn);
  
  if (buttonOn == 1)
     {
         println("happy birthday!");
         audio1.play();
     }
     
  else
     {
         println("pause music");
         audio1.pause();
     }
     
  //rewind if end of the song is reached
  if (audio1.position() == audio1.length()){
         println("rewind song");
         audio1.rewind();
         audio1.play();
     }
  }

}
