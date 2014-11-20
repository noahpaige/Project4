
PSys fireW1;
PImage heart;



void setup() 
{
  size(500, 500);
  
  heart = loadImage("Heart.png");

  // start a new particle system
  fireW1 = new PSys(100, new PVector(250,250));
  

  frameRate(40);
}

void draw() 
{
  background(0);

  // run the particle system
  fireW1.run();  
  
  if (fireW1.dead())
  {
    fireW1 = new PSys(100, new PVector(250,250));
  }
}

void mousePressed()
{
  
   fireW1 = new PSys(100, new PVector(mouseX, mouseY));
}
