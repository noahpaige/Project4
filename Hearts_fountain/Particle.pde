// define a particle
class Particle 
{
  PVector loc;
  PVector vel;
  PVector accel;
  float life;

  // constructor
  Particle(PVector start) 
  {
    vel = PVector.fromAngle(random(-3*PI/5, -2*PI/5));
    vel.setMag(random(.8,1.2));
    loc = start.get();  // make a COPY of the start location vector

    life = 200;
  }

  // TODO_1 define another constructor that allows a particle to start with a given color

  // what to do each frame
  void run() 
  {
    updateP();
    renderP(); // render is a fancy word for draw.  :)
  }

  // a function to update the particle each frame
  void updateP() 
  {
    loc.add(vel);
    life -= 5.0;
  }

  // how to draw a particle
  void renderP() 
  {
    pushMatrix();
    translate(loc.x, loc.y);
    tint(255);//, life);
    scale(random(.015,.02));
    image(heart, loc.x, loc.y);
    popMatrix();
  }

  // a function to test if a particle is alive
  boolean alive() 
  {
    if (life <= 0.0) 
    {
      return false;
    } else 
    {
      return true;
    }
  }
} //end of particle object definition

