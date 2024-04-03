import processing.serial.*;
Serial puerto;
int estadoLed1 = 0;
int estadoLed2 = 0;
int estadoLed3 = 0;
int estadoLed4 = 0;

void setup() {
  size(500, 300);
  puerto = new Serial(this, Serial.list()[0], 9600);
}

void draw() {
  background(255);
  
  // Botón LED1
  fill(255, 0, 0);
  ellipse(100, height/2, 50, 50);
  
  // Botón LED2
  fill(255, 0, 0);
  ellipse(200, height/2, 50, 50);
  
  // Botón LED3
  fill(255, 0, 0);
  ellipse(300, height/2, 50, 50);
  
  // Botón LED4
  fill(255, 0, 0);
  ellipse(400, height/2, 50, 50);
}

void mousePressed() {
  if (dist(mouseX, mouseY, 100, height/2) < 25) {
    if (estadoLed1 == 0) {
      estadoLed1 = 1;
      puerto.write('1');
    } else {
      estadoLed1 = 0;
      puerto.write('5');
    }
  } else if (dist(mouseX, mouseY, 200, height/2) < 25) {
    if (estadoLed2 == 0) {
      estadoLed2 = 1;
      puerto.write('2');
    } else {
      estadoLed2 = 0;
      puerto.write('6');
    }
  } else if (dist(mouseX, mouseY, 300, height/2) < 25) {
    if (estadoLed3 == 0) {
      estadoLed3 = 1;
      puerto.write('3');
    } else {
      estadoLed3 = 0;
      puerto.write('7');
    }
  } else if (dist(mouseX, mouseY, 400, height/2) < 25) {
    if (estadoLed4 == 0) {
      estadoLed4 = 1;
      puerto.write('4');
    } else {
      estadoLed4 = 0;
      puerto.write('8');
    }
  }
}
