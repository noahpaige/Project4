// now define a group of particles as a particleSys
class PSys
{

  ArrayList particles; // all the particles
  PVector source; // where all the particles emit from

  // constructor
  PSys(int num, PVector init_loc) 
  {
    particles = new ArrayList();
    source = init_loc;  // you have to do this to set a vector equal to another vector
    for (int i=0; i < num; i++) 
    {
      particles.add(new FountainParticle(source));
    }
  }

  // what to do each frame
  void run() 
  {
    // go through backwards for deletes
    for (int i=particles.size ()-1; i >=0; i--) 
    {
      FountainParticle p = (FountainParticle)particles.get(i);

      // update each particle per frame
      p.run();
      if (!p.alive()) // what is that '!' thingy??
      {
        particles.remove(i);
      }
    }
    if (timer % 15 == 0)
    {
    fireW1.addParticle();
    }
  }
   void addParticle()
   {
   particles.add(new FountainParticle(new PVector(random(source.x-10,source.x+10),(random(source.y-3,source.y+3)))));
   }
 
  boolean dead() 
  {
    if (particles.isEmpty()) 
    {
      return true;
    } else 
    {
      return false;
    }
  }
}

