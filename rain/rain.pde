ArrayList particles;
int LIFESPAN = 160;
float x,dx;
PVector acceleration =  new PVector(0, 0.025);
 
void setup() 
{
 x = 50;
 size(600, 400);
 stroke(0);
 fill(150);
 smooth();
 particles = new ArrayList();
}
 
void draw() 
{
  background(60,160,230);
  
  fill(125,200,0);
  rect(0,height*.66,width,height/2);
  
  
  
  particles.add(new Particle(new PVector(x,50)));
  for (int i = particles.size()-1; i >= 0; i--) 
  {
    Particle p = (Particle)particles.get(i);
    if(!p.exist()) 
    {
      particles.remove(i);
    }
  }
  fill(128);
  stroke(128);
  ellipse(x,50,100,50); // CHANGE CLOUD
  
 update();
}


void mousePressed()
{
  dx = 0.3;
}



void update()
{
  x += dx;
  if(x > width-50 || x < 50)
  {
    dx = -dx;
  } 
}


    
    
 

