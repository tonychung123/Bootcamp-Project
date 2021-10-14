import processing.sound.*;
SoundFile file = null;
float angle = 0;
void setup() {
  size(500, 400, P3D); //canvas for 3D shape
  background(0); 
  noStroke();
}

void draw() {

  background(0); //black background
  translate(width/2, height/2); //moves the shape into the middle
  angle = angle + 1.5;

  fill (#E8EDF7); //colour for box
  noStroke(); //no outline
  rotateY(radians(angle)); //rotates the shape on its x axis
  rotateX(radians(angle)); //rotates the shape on its y axis
  box(200); //creates a cubical shape with the size of 200
  frameRate(5);

}

void keyPressed() {

  if (key == '1') {
   println("1");
   if (file != null)
       file.stop(); //stops if key '1' is pressed
      file = new SoundFile(this, "control.mp3"); //first chosen music
      file.play(); //plays if key '1' is pressed
     
  }
  if (key =='2') { 
    println("2");
    if (file !=null)
    file.stop(); //stops if key '2' is pressed
    file = new SoundFile (this, "fluidity.mp3"); // second chosen music
    file.play(); // plays if key '2' is pressed
    
  }
}
