PImage house, mansion, heart;
ArrayList particles;
int LIFESPAN = 100;
float x, dx, gx, Gdx, cx, Cdx;
PVector Gloc, Bloc;
PVector Gdir, Bdir;
float G_legL, G_legR, B_legL, B_legR, speed;

int timer;

boolean GlegL_right = true;
boolean GlegR_right = false;
boolean BlegL_right = true;
boolean BlegR_right = false;
boolean happy = false;
boolean animateOn = false;

//For Fireworks
FWsystem fireW1,fireW2,fireW3;
HeartFWsystem HeartFW1;

color sysColor;
 
void setup() 
{
  HeartFW1 = new HeartFWsystem(100, new PVector(2*width+120,2*height));
  size(600, 400);
  house = loadImage("data/house.png");
  mansion = loadImage("data/Mansion.png");
  heart = loadImage("Heart.png");
  x = 100;
  cx = 100;
  gx = -25;
  
  Gloc = new PVector(gx,height/1.5);
  Gdir = new PVector(-1,0);
  G_legL=0;
  G_legR=0;
  
  Bloc = new PVector(x,height/1.5);
  Bdir = new PVector(-1,0);
  B_legL=0;
  B_legR=0;
  
  speed = 1;
 
 
  stroke(0);
  fill(150);
  smooth();
  particles = new ArrayList();
  
  fireW1 = new FWsystem(50, new PVector(random(20, width*.33), random(height*.3)));
  fireW2 = new FWsystem(50, new PVector(random(width*.33, width*.66), random(height*.3)));
  fireW3 = new FWsystem(50, new PVector(random(width*.66, width-20), random(height*.3)));
}
 
void draw() 
{
  timer++;
  background(60,160,230);
  if (Gloc.x == Bloc.x-50)
  {
     drawBoy_happy();
     fireW1.run();  
     fireW2.run();
     fireW3.run();
  
     if (fireW1.dead())
     {
        fireW1 = new FWsystem(50, new PVector(random(20, width*.33), random(height*.3)));
        fireW2 = new FWsystem(50, new PVector(random(width*.33, width*.66), random(height*.3)));
        fireW3 = new FWsystem(50, new PVector(random(width*.66, width-20), random(height*.3)));
     }
  }
  fill(125,200,0);
  rect(0,height*.66,width,height/2);
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
  drawCloud(cx,100); // CHANGE CLOUD
  
  update();

  drawBoy_sad();
  
  if(animateOn)
  {
    animateBoy();
  }
  
  pushMatrix();
    scale(.6);
    image(house, 50,300); //house
  popMatrix();
  pushMatrix();
    scale(.8);
    image(mansion, 500,160); //house
  popMatrix();
  
  particles.add(new Particle(new PVector(cx,50)));
  for (int i = particles.size()-1; i >= 0; i--) 
  {
    Particle p = (Particle)particles.get(i);
    if(!p.exist()) 
    {
      particles.remove(i);
    }
  }
  update();
  fill(128);
  stroke(128);
  drawCloud(cx,100); // CHANGE CLOUD
  
  

  drawBoy_sad();
  
  if(animateOn)
  {
    animateBoy();
  }
  
  if (timer==2)
{
  dx = 0.5;
  Cdx = 0.5;
  animateOn = !animateOn;
}

if (Gloc.x == Bloc.x-50)
{
  drawBoy_happy();
 }
  
  
  
}



//===================FUNCTIONS=====================================
void update()
{
  x += dx;
  cx += Cdx;
  if(x > width-100 || x < 100)
  {
    dx = -dx;
  }
  if(cx > width-100 || cx < 100)
  {
    Cdx = -Cdx;
  }
  
 //Stop boy in middle of screen, offset by 50 pixels to the right. 
  if(dx<0 && x==(width/2+50))
  {
    dx = 0;
    Cdx = 0;
    animateOn = !animateOn;
    B_legL = 0;
    B_legR = 0;
  }
  
  if(dx==0 && Gloc.x != Bloc.x-50)
  {
     Gdx = 0.5;
     Cdx = 0.7;
     drawGirl();
     animateGirl();
     

     
  }
  
  
  if(Gloc.x == Bloc.x-50)
  {
     //HeartFW1 = new HeartFWsystem(100, new PVector(Bloc.x,Bloc.y));
      HeartFW1.run();   
     println("true");
     drawGirl();
  } 
}


void drawCloud(float x, float y)
{
  pushMatrix();
  translate(x, y);
  noStroke();
  fill(175);
  ellipse(-50, 0, 100, 100); // leftmost
  ellipse(-15, -45, 75, 75); // left upper
  ellipse(30, -27.5, 62.5, 62.5);
  ellipse(57.5, 6.25, 87.5, 87.5);
  rect(-50, 0, 100, 50);
  rect(-5, -25, 25, 25);
  popMatrix();
}


void drawGirl()
{
 noStroke();

  pushMatrix();
    translate(Gloc.x,Gloc.y);
    scale(1.1);
    rectMode(CENTER);
      //HAIR part 1
      fill(#5A4E38);
      rect(0,-40,32,31,5);
      //BODY
      fill(#FFA0FE);//pink
      rect(0,0,28,50);
      //HEAD
      fill(#D8BC9D);//skin tone
      rect(0,-40,28,28,8);
      //EYES
      fill(255);
      rect(-6,-44,6,6);
      rect(6,-44,6,6);
      fill(0);
      rect(-7.5,-45.5,3,3);
      rect(4.5,-45.5,3,3);
      //MOUTH
      rect(0,-32.5,12,3);
      rect(-7,-35,3,3);
      rect(7,-35,3,3);
      //ARMs
      fill(#FFA0FE);//pink
      rectMode(CORNER);
        rect(14,-25,10,10,3);
        rect(-24,-25,10,10,3);
        fill(#D8BC9D);
        rect(15.5,-15,7,32);
        rect(-22.5,-15,7,32);
        rect(15,15,8,8);
        rect(-23,15,8,8);
      //LEGS
      fill(#3D5493);//navy blue
      rect(-14,25,28,11);
    
      //LEFT LEG-----------
      pushMatrix();
        translate(-8,32.5);
        rotate(G_legL);
        quad(-6.1,0,6,0,2,45,-4,45);
        fill(20);
        rect(-4,45,10,6,6);
      popMatrix();
      //RIGHT LEG----------
      pushMatrix();
        translate(8,32.5);
        rotate(G_legR);
        fill(#3D5493);
        quad(-6,0,6.1,0,2,45,-4,45);
        fill(20);
        rect(-4,45,10,6,6);
      popMatrix();
      
      //HAIR part 2
      pushMatrix();
        translate(0,-40);
        fill(#5A4E38);
        rectMode(CORNER);
        rect(-13,-14,28,2);
        rect(-14,-13,2,5);
        rect(-12,-13,2,4);
        rect(-10,-13,2,2);
        rect(14,-13,2,5);
        rect(12,-13,2,4);
        rect(10,-13,2,2);
        //hair below head
        rect(-16,12.5,1,15);
        rect(-15,13.5,1,16);
        rect(-14,13.5,1,17);
        rect(-13,13.5,1,18);
        rect(-12,13.5,1,17);
        rect(-11,13.5,1,16);
        rect(-10,13.5,1,15);
        rect(15,12.5,1,15);
        rect(14,13.5,1,16);
        rect(13,13.5,1,17);
        rect(12,13.5,1,18);
        rect(11,13.5,1,17);
        rect(10,13.5,1,16);
        rect(9,13.5,1,15);
      popMatrix();
popMatrix();
}


void drawBoy_sad()
{
 noStroke();

  pushMatrix();
    translate(Bloc.x,Bloc.y);
    scale(1.1);
    rectMode(CENTER);
      //BODY
      fill(30);//black
      rect(0,0,28,50,2);
      //HEAD
      fill(#D8BC9D);//skin tone
      rect(0,-40,28,28,8);
      //EYES
      fill(255);
      rect(-6,-44,6,6);
      rect(6,-44,6,6);
      fill(0);
      rect(-7.5,-42.5,3,3);
      rect(4.5,-42.5,3,3);
      //MOUTH
      rect(0,-32.5,12,3);
      rect(-7,-30,3,3);
      rect(7,-30,3,3);
      //ARMs
      fill(30);//black
      rectMode(CORNER);
        rect(14,-25,10,10,3);
        rect(-24,-25,10,10,3);
        fill(#D8BC9D);
        rect(15.5,-15,7,32);
        rect(-22.5,-15,7,32);
        rect(15,15,8,8);
        rect(-23,15,8,8);
      //LEGS
      fill(#3D5493);//navy blue
      rect(-14,25,28,11);
    
      //LEFT LEG-----------
      pushMatrix();
        translate(-8,32.5);
        rotate(B_legL);
        rect(-6,0,12,45);
        fill(20);
        rect(-6,45,12,6,6);
      popMatrix();
      //RIGHT LEG----------
      pushMatrix();
        translate(8,32.5);
        rotate(B_legR);
        fill(#3D5493);
        rect(-6,0,12,45);
        fill(20);
        rect(-6,45,12,6,6);
      popMatrix();
popMatrix();
}

void drawBoy_happy()
{
 noStroke();

  pushMatrix();
    translate(Bloc.x,Bloc.y);
    scale(1.1);
    rectMode(CENTER);
      //BODY
      fill(30);//black
      rect(0,0,28,50,2);
      //HEAD
      fill(#D8BC9D);//skin tone
      rect(0,-40,28,28,8);
      //EYES
      fill(255);
      rect(-6,-44,6,6);
      rect(6,-44,6,6);
      fill(0);
      rect(-7.5,-45.5,3,3);
      rect(4.5,-45.5,3,3);
      //MOUTH
      rectMode(CORNER);
        rect(-8,-35,16,3);
        rect(0,-32,8,3);
        rect(2.3,-29,3,2);
        fill(#FA9CA4);
        rect(-8,-32,8,3);
        rect(-4,-29,7,2);
      rectMode(CENTER);
      //ARMs
      fill(30);//black
      rectMode(CORNER);
        rect(14,-25,10,10,3);
        rect(-24,-25,10,10,3);
        fill(#D8BC9D);
        rect(15.5,-15,7,32);
        rect(-22.5,-15,7,32);
        rect(15,15,8,8);
        rect(-23,15,8,8);
      //LEGS
      fill(#3D5493);//navy blue
      rect(-14,25,28,11);
    
      //LEFT LEG-----------
      pushMatrix();
        translate(-8,32.5);
        rotate(B_legL);
        rect(-6,0,12,45);
        fill(20);
        rect(-6,45,12,6,6);
      popMatrix();
      //RIGHT LEG----------
      pushMatrix();
        translate(8,32.5);
        rotate(B_legR);
        fill(#3D5493);
        rect(-6,0,12,45);
        fill(20);
        rect(-6,45,12,6,6);
      popMatrix();
popMatrix();
}


void animateGirl()
{
  // update the girl's global location
  Gloc.x = Gloc.x + Gdx;
  
  // LegR
  if (G_legR < -.75)
  {
    GlegR_right = true;
  }
  else if (G_legR > .4)
  {
     GlegR_right = false;
  } 
  if(GlegR_right)
  {
    G_legR += .04;
  }
  else
  {
    G_legR -= .04;
  }
  
  // LegL
  if (G_legL < -.4)
  {
    GlegL_right = true;
  }
  else if (G_legL > .75)
  {
    GlegL_right = false;
  } 
  if(GlegL_right)
  {
    G_legL += .04;
  }
  else
  {
    G_legL -= .04;
  }
}


void animateBoy()
{
  // update the boy's global location
  Bloc.x = Bloc.x + dx;

  
  // LegR
  if (B_legR < -.5)
  {
    BlegR_right = true;
  }
  else if (B_legR > .3)
  {
     BlegR_right = false;
  } 
  if(BlegR_right)
  {
    B_legR += .03;
  }
  else
  {
    B_legR -= .03;
  }
  
  // LegL
  if (B_legL < -.3)
  {
    BlegL_right = true;
  }
  else if (B_legL > .5)
  {
    BlegL_right = false;
  } 
  if(BlegL_right)
  {
    B_legL += .03;
  }
  else
  {
    B_legL -= .03;
  }
}
