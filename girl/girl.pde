PVector Gloc;
PVector Gdir;
float G_legL,G_legR;
float speed;

boolean GlegL_right = true;
boolean GlegR_right = false;
boolean animateOn = false;


void setup()
{
  size(400,400);
  Gloc = new PVector(width*.9,height/2);
  Gdir = new PVector(-1,0);
  G_legL=0;
  G_legR=0;
  speed = 1;
}

void draw()
{  
  background(128);
  
  drawGirl();
  
  if(animateOn)
  {
    animate();
  }
}

void mousePressed()
{
  Gloc.x = width*.9;
  G_legL=0;
  G_legR=0;
  animateOn = !animateOn;
}

void drawGirl()
{
 noStroke();

  pushMatrix();
    translate(Gloc.x,Gloc.y);
    scale(2);
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

void animate()
{
  // update the girl's global location
  Gloc.x = Gloc.x + Gdir.x*speed;
  Gloc.y = Gloc.y + Gdir.y*speed;
  
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
