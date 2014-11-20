
HeartFWsystem HeartFW1;
PImage heart;



void setup() 
{
  size(500, 500);
  
  heart = loadImage("Heart.png");

  // start a new particle system
  HeartFW1 = new HeartFWsystem(100, new PVector(250,250));
  

  frameRate(40);
}

void draw() 
{
  background(0);

  // run the particle system
  HeartFW1.run();  
  
  if (HeartFW1.dead())
  {
    HeartFW1 = new HeartFWsystem(100, new PVector(250,250));
  }
}


