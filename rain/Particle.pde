class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  int age;
  float trans;

  Particle(PVector start) 
  {
    location = start.get();
    acceleration =  new PVector(0, 0.025);
    velocity = new PVector(random(-.5, .5), random(-.5, 0));
    age = 0;
    trans = 255;
  }

  boolean exist() 
  {
    velocity.add(acceleration);
    location.add(velocity);
    fill(#81CDFF, trans);
    stroke(0, 0, 200, trans);
    //ellipse(location.x, location.y, 10, 10);// CHANGE RAIN DEOPPLET
    drawRainDrop(location.x,location.y);
    if (age > LIFESPAN) 
    {
      return false;
    }
    age++;
    trans -= 1;
    return true;
  }

  void drawRainDrop(float cx, float cy)
  {
    pushMatrix();
    translate(cx, cy);
      beginShape();
    curveVertex(cx, cy-10);
    curveVertex(cx+1, cy-8);
    curveVertex(cx+2, cy-5);
    curveVertex(cx+3, cy-3);
    curveVertex(cx+2, cy-2);
    curveVertex(cx, cy);
    curveVertex(cx-2, cy-2);
    curveVertex(cx-3, cy-3);
    curveVertex(cx-2, cy-5);
    curveVertex(cx-1, cy-8);
    curveVertex(cx, cy-10);
    endShape();
    popMatrix();
  }
}

