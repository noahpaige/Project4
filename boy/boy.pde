PVector Bloc;
PVector Bdir;
float B_legL,B_legR;
float speed;

boolean BlegL_right = true;
boolean BlegR_right = false;
boolean animateOn = false;
boolean happy = false;


void setup()
{
  size(400,400);
  Bloc = new PVector(width*.9,height/2);
  Bdir = new PVector(-1,0);
  B_legL=0;
  B_legR=0;
  speed = 1;
}

void draw()
{  
  background(128);
  
  if(happy)
  {
    drawBoy_happy();
  }
  else
  {
    drawBoy_sad();
  }
  
  
// ADD IF SATEMENT TO TRIGGER drawBoy_happy(); BASE OFF OF GIRL LOC.
// keyPressed() ADDED FOR EXAMPLE
  
  
  if(animateOn)
  {
    animate();
  }
}

void mousePressed()
{
  Bloc.x = width*.9;
  B_legL=0;
  B_legR=0;
  animateOn = !animateOn;
}

void keyPressed() //EXAMPLE TRIGGER
{
  happy = !happy;
}

void drawBoy_sad()
{
 noStroke();

  pushMatrix();
    translate(Bloc.x,Bloc.y);
    scale(2);
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
    scale(2);
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

void animate()
{
  // update the girl's global location
  Bloc.x = Bloc.x + Bdir.x*speed;
  Bloc.y = Bloc.y + Bdir.y*speed;
  
  // LegR
  if (B_legR < -.75)
  {
    BlegR_right = true;
  }
  else if (B_legR > .4)
  {
     BlegR_right = false;
  } 
  if(BlegR_right)
  {
    B_legR += .04;
  }
  else
  {
    B_legR -= .04;
  }
  
  // LegL
  if (B_legL < -.4)
  {
    BlegL_right = true;
  }
  else if (B_legL > .75)
  {
    BlegL_right = false;
  } 
  if(BlegL_right)
  {
    B_legL += .04;
  }
  else
  {
    B_legL -= .04;
  }
}
