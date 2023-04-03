# Module 2 - Interactive Devices
## The Interactive, Singing Birthday Card
![IMG_8040](https://user-images.githubusercontent.com/80801327/229381325-d6981165-6b28-499e-bf01-af9ea14ec359.jpeg)

## Project Description
The goal of this project was to create an interactive device using the hardware listed below: 
* ESP32 TTGO T-Display 
* Button
* Joystick

Using wires and breadboards to connect the parts to the ESP32, I was tasked with designing an enclosure for the device and writing software that sends data over a serial monitor to my laptop, which then processes the data to perform a task of my choosing. 

## Creative Vision
![IMG_8039](https://user-images.githubusercontent.com/80801327/229381425-58a8ea47-661b-4006-ac7b-f26cf2ca7d6c.jpeg)

For my interactive device, I chose to create a singing birthday card where the user can choose to play or pause the song by pressing the button, and they can also change the volume and the pan of the song by moving the joystick. I designed this card for a child, as I think the interactive parts would be most exciting to a younger person (although they might not appreciate the technical aspects behind the card as much as an adult). I came up with this idea because it was my younger cousin's birthday at the beginning of this month, and she lives in Germany, so I have never been able to spend a birthday with her, but if I were able to send this card, it would be a personalized way to send happy birthday wishes overseas. Also, the song can easily be changed to any mp3 file of the sender's choice, so it can be even more personalized, and it can also be modified for another occasion other than a birthday. 

Since I designed this card specifically for a 7-year old girl, I chose to use fun, bright colors for the card such as gold and pink, and I also chose to handwrite the card in order to make it more personal and "home made" because I wanted to differentiate it from a store-bought card.

## Technical Description
In order to implement this design from a hardware perspective, I connected the ESP32 to a large breadboard, the joystick to a small breadboard, and the button to a small breadboard as well in order to be able to move the button and joystick easily to fit in the card design. I connected the button breadboard and the joystick breadboard to the larger ESP32 breadboard using wires. 

For the birthday card design, I used a small box for the bottom of the card to enclose the hardware, and I wrapped the box in pink paper. I cut holes in the paper for the joystick and the button to stick out in order for the user to interact with them, and I also cut a whole in the side of the box for the USB-C cable in order to connect the ESP32 to my laptop. In order to keep everything in place inside the card enclosure, I used packaging tape and cardboard in order to hold the parts in place and life the button and joystick up high enough to stick out of the top of the box. 

![IMG_8029](https://user-images.githubusercontent.com/80801327/229381373-4fca57e5-7e4f-47c5-be48-5eff924734d2.jpeg)


From a software perspective, I used the Arduino IDE to upload software to the ESP32 to connect it to the joystick and the button. I sent values for the joystick's x-value, y-value, and whether or not the button had been pushed through a serial connection to my laptop. I then used the Processing IDE to write a program that reads the values from the serial connection. The program then plays back a happy birthday soundtrack with the x-value corresponding to the volume or the gain of the song, the y-value corresponding to the pan of the song over the speakers, and the button push having the capabilities to play or pause the song. 

## Problems Encountered Along the Way
Originally, I was planning to implement a switch function by using the button attached to the joystick, which would have allowed the user to choose between 2 songs. Since my cousin I designed this card for lives in Germany, I was planning to have one song be Happy Birthday in English and the other song would be Happy Birthday in German. However, I was not able to separate the functionality of both buttons (i.e. when either button was pushed, the song either played or paused, which was only supposed to happen when one specific button was pushed). The class TA gave me the advice that since implementing the switch was optional, it would be better to not implement it and focus the software around one audio file instead. 

![IMG_7939](https://user-images.githubusercontent.com/80801327/229381410-6cfb3b18-8e6d-43cf-9ad6-40097276a01c.jpeg)


Additionally, I was also planning to solder wires directly to the button and the joystick in order to make them more mobile for my design, since it was difficult to create the birthday card when they were both attached to a large breadboard. However, when I attempted to solder them, I realized it was difficult since the pins on the joystick are very close together. For this reason, I decided to use two smaller breadboards instead of one large one and/or soldering the parts to wires, which still allowed the joystick and the button to be mobile. However, since I did begin the soldering process before I made this decision, I had to then desolder the wires I had already connected to the joystick. I noticed that after this process, the joystick was not as sensitive to x and y value changes, which I believe might have been due to heat damage while soldering; because of this, it made it difficult to represent the full capabilities of my interactive device using this joystick. 

## Further Documentation
[Link to blog post](https://medium.com/@iw2230/module-2-interactive-devices-f605d0e128c5)
