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
      velocity = new PVector(random(-.5, .5),random(-.5,0));
      age = 0;
      trans = 255;
  }
 
  boolean exist() 
  {
     velocity.add(acceleration);
     location.add(velocity);
     fill(0,0,200,trans);
     stroke(0,0,200,trans);
     ellipse(location.x, location.y, 10, 10);// CHANGE RAIN DEOPPLET
     if (age > LIFESPAN) 
     {
       return false;
     }
     age++;
     trans -= 1;
     return true;
  }
 
}

