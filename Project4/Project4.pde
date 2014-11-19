//Project 4 starting file
/* Requirements:
 * 
 * Must include Particle System of some kind
 * Must Tell a Story w/ beginning, middle, && end
 * Story must be interesting
 */
PShape s;

void setup()
{
  size(600, 400);
  smooth();
  drawGridlines(); // draws 100px x 100px grid lines
  drawCloud();
  drawRaindrop();
}

void draw()
{
}

void drawCloud()
{
  pushMatrix();
  translate(300, 200);
  noStroke();
  fill(175);
  ellipse(-100, 0, 200, 200); // leftmost
  ellipse(-30, -90, 150, 150); // left upper
  ellipse(60, -55, 125, 125);
  ellipse(115, 12.5, 175, 175);
  rect(-100, 0, 200, 100);
  rect(-10, -50, 50, 50);
  popMatrix();
}

void drawRaindrop()
{
  PImage raindrop = loadImage("data/Raindrop.png");
  pushMatrix();
  scale(.2);
  image(raindrop, 0, 0);
  popMatrix();
}
void drawGridlines()
{
  for (int i = 0; i < 6; i++)
  {
    line(i*100, 0, i*100, height);
    if (i < 4)
    {
      line(0, i*100, width, i*100);
    }
  }
}

