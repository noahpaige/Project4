//Project 4 starting file
/* Requirements:
 * 
 * Must include Particle System of some kind
 * Must Tell a Story w/ beginning, middle, && end
 * Story must be interesting
 */


void setup()
{
  size(600, 400);
  drawGridlines(); // draws 100px x 100px grid lines 
}

void draw()
{
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

