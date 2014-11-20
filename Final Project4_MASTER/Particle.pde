class Particle 
{
  PVector location;
  PVector velocity;
  PVector acceleration;
  int age;
  float trans;
 
  Particle(PVector start) 
  {
      location = start.get();
      acceleration =  new PVector(0, 0.05);
      velocity = new PVector(random(-.75, .75),random(-.5,.5));
      age = 0;
      trans = 255;
  }
 
  boolean exist() 
  {
     velocity.add(acceleration);
     location.add(velocity);
     fill(#81CDFF, trans);
     stroke(0,0,200,trans);
     drawRainDrop(location.x, location.y);// CHANGE RAIN DEOPPLET
     if (age > LIFESPAN) 
     {
       return false;
     }
     age+=1.3;
     trans -= 1.3;
     return true;
  }
}


void drawRainDrop(float cx, float cy)
  {
    pushMatrix();
    translate(cx, cy);
    beginShape();
    curveVertex(0, -10);
    curveVertex(1, -8);
    curveVertex(2, -5);
    curveVertex(3, -3);
    curveVertex(2, -2);
    curveVertex(1, -1);
    curveVertex(0, 0);
    curveVertex(-1, -1);
    curveVertex(-2, -2);
    curveVertex(-3, -3);
    curveVertex(-2, -5);
    curveVertex(-1, -8);
    curveVertex(0, -10);
    endShape();
    popMatrix();
  }
