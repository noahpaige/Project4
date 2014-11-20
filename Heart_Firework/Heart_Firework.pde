// Base particle code for CSC 123 Lab 9

// TODO_1: add a new particle constructor that will take in a starting color for a particle
// TODO_2: add code to the Particle System to call the new Particle constructor
// TODO_3: add code so that the fire work explodes where the mouse clicks (use the existing firework, just restart a new system where the moust clicks)
// TODO_4: add code to start another firework when the old one dies
// TODO_5: add code in order to have the shading/transparency and or shape of the particle change over time
//         or depending on velocity
// TODO_6: add more then one firework



// declare a particle system
PSys fireW1;
PImage heart;



void setup() 
{
  size(500, 500);
  
  heart = loadImage("Heart.png");

  // range for the alpha is 0-100
  

  // start a new particle system
  fireW1 = new PSys(100, new PVector(250,250));
  

  frameRate(40);
}

void draw() 
{
  background(0);

  // run the particle system
  fireW1.run();  
  
  // TODO_4 add code to start a new particle system once the old one dies
  if (fireW1.dead())
  {
    fireW1 = new PSys(100, new PVector(250,250));
  }
}

// TODO_3 add a mouse click function
void mousePressed()
{
  
   fireW1 = new PSys(100, new PVector(mouseX, mouseY));
}
