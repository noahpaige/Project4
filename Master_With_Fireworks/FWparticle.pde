// define a particle
class FWparticle 
{
   PVector loc;
   PVector vel;
   PVector accel;
   float xr,yr;
   float life;
   color pcolor;
  
   // constructor
   FWparticle(PVector start,color myColor) 
   {
      accel = new PVector(0, 0.05); //gravity
      vel = PVector.fromAngle(random(2*PI));
      vel.setMag(random(2,3));
      pcolor = myColor;
      loc = start.get();  // make a COPY of the start location vector
      xr = 8.0;
      yr = 8;
      life = 100;
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
      vel.add(accel); 
      loc.add(vel);
      life -= 1.0;
      xr -= random(.1);
   }
    
   // how to draw a particle
   void renderP() 
   {
      pushMatrix();
       stroke(pcolor);
       fill(pcolor, 70);
       translate(loc.x, loc.y);
       ellipse(0, 0, xr, yr);
      popMatrix();
   }
    
    // a function to test if a particle is alive
   boolean alive() 
   {
      if (life <= 0.0) 
      {
         return false;
      } 
      else 
      {
         return true;
      }
   }
} //end of particle object definition

