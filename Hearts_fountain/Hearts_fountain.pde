int timer;

// declare a particle system
PSys fireW1,fireW2,fireW3,fireW4;
color sysColor;
PImage heart;

void setup() 
{
  size(500, 500);
  timer = 0;
  heart = loadImage("Heart.png");

  // range for the alpha is 0-100
  

  // start a new particle system
  fireW1 = new PSys(1, new PVector(250,250));

  frameRate(80);
}

void draw() 
{
  background(0);
  timer++;
  // run the particle system
  fireW1.run();  
  
  if (fireW1.dead())
  {
    fireW1 = new PSys(5, new PVector(250,250));
   
  }
}

// TODO_3 add a mouse click function
void mousePressed()
{
  
   fireW2 = new PSys(100, new PVector(mouseX, mouseY));
  
}
