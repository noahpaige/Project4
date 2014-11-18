HappyFace myHappyFace;
SadFace mySadFace;
ShirtDesign myShirtDesign;
float dogx = 0;
float dogy = 0;
void setup()
{
  size(450,450);
  background(#93A6FF);

  myHappyFace = new HappyFace(325,200);
  mySadFace = new SadFace(325,200);
  myShirtDesign = new ShirtDesign(385,50);
}

void draw()
{  
  //Grass
  fill(#08A72F);
  rect(0,200,1000,1000);
   if (mousePressed)
  {
  myHappyFace.display();
  myShirtDesign.display();
  }
  else
  {
  mySadFace.display();
  }
}


class HappyFace
{
  //Global Variables
  float x = 0;
  float y = 0;

  //Contructor
  HappyFace(float _x, float _y)
  {
    x = _x;
    y = _y;
  }

  //Functions
  void run()
  {
    display();
  }
  void display()
  {
    translate(x, y);
    noStroke();
    //Head
    fill(#D8BC9D);
    rect(50, 50, 30, 30);

    //Eyes
    fill(0);
    rect(58, 56, 3, 3);
    rect(72, 56, 3, 3);
    fill(255);
    rect(55, 59, 3, 3);
    rect(55, 56, 3, 3);
    rect(58, 59, 3, 3);
    rect(69, 56, 3, 3);
    rect(69, 59, 3, 3);
    rect(72, 59, 3, 3);

    //mouth
    fill(0);
    rect(56, 68, 3, 3);
    rect(59, 68, 3, 3);
    rect(62, 68, 3, 3);
    rect(65, 68, 3, 3);
    rect(68, 68, 3, 3);
    rect(71, 68, 3, 3);
    rect(71, 71, 3, 3);
    rect(68, 71, 3, 3);
    rect(65, 71, 3, 3);
    rect(68, 74, 3, 3);
    fill(#FA9CA4);
    rect(56, 71, 3, 3);
    rect(59, 71, 3, 3);
    rect(59, 74, 3, 3);
    rect(62, 74, 3, 3);
    rect(62, 71, 3, 3);
    rect(65, 74, 3, 3);

    //
    fill(random(255),random(255),random(255));
    rect(50, 81, 30, 50);  //Dog design

    //right arm
    rect(80, 81, 10, 10);
    rect(40, 81, 10, 10);
    fill(#D8BC9D);
    rect(31, 82, 9, 8);
    rect(23, 67, 8, 23);

    //left arm   
    fill(#D8BC9D);
    rect(89, 82, 9, 8);
    rect(98, 67, 8, 23);

    //Legs
    fill(#475BDB);
    rect(50, 131, 30, 20);
    rect(50, 151, 12, 40);    
    rect(68, 151, 12, 40);

    //shoes
    fill(20);
    rect(42, 191, 21, 7, 6);
    rect(67, 191, 21, 7, 6);

    //Hands
    fill(#D8BC9D);
    rect(22,60,10,8);
    rect(97,60,10,8);

    
  }
}

class SadFace
{
  //Global Variables
  float x = 0;
  float y = 0;

  //Contructor
  SadFace(float _x, float _y)
  {
    x = _x;
    y = _y;
  }

  //Functions
  void run()
  {
    display();
  }
  void display()
  {
    translate(x, y);
    noStroke();
    //Head
    fill(#D8BC9D);
    rect(50, 50, 30, 30);
    //Eyes
    fill(0);
    rect(55, 59, 3, 3);
    rect(69, 59, 3, 3);
    fill(255);
    rect(58, 56, 3, 3);
    rect(72, 56, 3, 3);
    rect(55, 56, 3, 3);
    rect(69, 56, 3, 3);
    rect(58, 59, 3, 3);
    rect(72, 59, 3, 3);

    //mouth
    fill(0);
    rect(56, 71, 3, 3);
    rect(59, 68, 3, 3);
    rect(62, 68, 3, 3);
    rect(65, 68, 3, 3);
    rect(68, 68, 3, 3);
    rect(71, 71, 3, 3);
    
    //body
    //fill(random(255),random(255),random(255));
    rect(50, 81, 30, 50);

    //right arm
    rect(80, 81, 10, 10);
    rect(40, 81, 10, 10);
    fill(#D8BC9D);
    rect(41, 91, 8, 32);

    //left arm   
    fill(#D8BC9D);
    rect(82, 91, 8, 32);

    //Legs
    fill(#475BDB);
    rect(50, 131, 30, 20);
    rect(50, 151, 12, 40);    
    rect(68, 151, 12, 40);

    //shoes
    fill(20);
    rect(42, 191, 21, 7, 6);
    rect(67, 191, 21, 7, 6);

    //Hands
    fill(#D8BC9D);
    rect(40,122,10,8);
    rect(81,122,10,8);
  }
}
  
  class ShirtDesign
{
  //Global Variables
  float x = 0;
  float y = 0;

  //Contructor
  ShirtDesign(float _x, float _y)
  {
    x = _x;
    y = _y;
  }

  //Functions
  void run()
  {
    display();
  }
  void display()
  {
    translate(x,y);
    scale(.35);
    //ears
    fill(#7E4F22);
    triangle(190, 100, 145, 70, 155, 123);
    triangle(210, 100, 255, 70, 245, 123);
    fill(#AF7E50);
    triangle(185, 105, 148, 75, 155, 123);
    triangle(215, 105, 252, 75, 245, 123);
    //Head Shape
    fill(#6C4901);
    ellipse(200, 150, 100, 120);
    //Nose
    fill(30);
    ellipse(200, 160, 30, 20);
    fill(0);
    ellipse(195, 158, 7, 5);
    ellipse(205, 158, 7, 5);
    //Eyesballs
    fill(255, 255, 255);
    ellipse(180, 125, 25, 25);
    ellipse(220, 125, 25, 25);
    //Pupils
    fill(0);
    ellipse(183, 129, 5, 5);
    ellipse(217, 129, 5, 5);
    //Mouth
    arc(200, 180, 50, 40, 0, PI);
    //Tongue
    fill(#F072BB);
    arc(200, 182, 25, 80, 0, PI);
  }
}

