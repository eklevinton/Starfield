Particle[] piggy = new Particle[200];


void setup()
{
  size(700,700);
  for (int i = 3; i < piggy.length; i++)
  {
    piggy[i] = new Particle();
  }
  for(int i = 0; i < 4; i++)
  {
   piggy[i] = new OddballParticle();
  }
  background(249, 204, 220);
}
void draw()
{

  fill (249, 204, 220);
 rect(-1,-1,705,705);
 
 //fill(251, 225, 241);
// ellipse(350,350,300,200);
 
 
  for (int i = 0; i < piggy.length; i++)
  {
    piggy[i].show();
    piggy[i].move();
  }
}
class Particle
{
  double myX, myY, mySpeed, myAngle;
  int  myOpacity;
  Particle()
  {
   
    myX = 450;
    myY = 450;
    myAngle = (double)(Math.random()*2* Math.PI);
    mySpeed = (double)(Math.random()*7);
    myOpacity = (int)(Math.random()*30) + 30;
  }


  void move()
  {
    myX = myX + (double)Math.cos(myAngle) * mySpeed;
    myY = myY +(double)Math.sin(myAngle) * mySpeed;
     if(mousePressed)
    {
      myX = mouseX;
      myY = mouseY;
    }
    
  }
  void show()
  {
 
   //STRAWBERRY CODE THAT I MIGHT USE:
   //triangle((float)myX, (float)myY, (float)myX + 15, (float)myY + 30, (float)myX + 25, (float)myY + 1);
   
   //pig face code:
  //fill(230,(int)(Math.random()*140),(int)(Math.random()*120));
  
  //fill(250,(int)(Math.random()*175),(int)(Math.random()*248));
fill(230,(int)(Math.random()*175),(int)(Math.random()*248));
float fraction = 0.25f; // brighten by 25%
  
  
   ellipse((float)myX, (float)myY, 35, 30 );
   //ears
   triangle ((float)myX+7, (float)myY-13, (float)myX+15, (float)myY-7, (float)myX+18, (float)myY-16);
   triangle ((float)myX-7, (float)myY-13, (float)myX-15, (float)myY-7, (float)myX-18, (float)myY-16);
   //snout
   fill(248, 187, 208);
   ellipse((float)myX, (float)myY+3, 15, 10 );
   //eyes
   fill(33, 47, 61);
   ellipse((float)myX+7, (float)myY-3, 4, 4 );
   ellipse((float)myX-7, (float)myY-3, 4, 4 );
   //snout's two nostrils
   ellipse((float)myX+2.5, (float)myY+3, 1, 3 );
   ellipse((float)myX-2.5, (float)myY+3, 1, 3 );
  }
}




//ODDBALL CODE

class OddballParticle extends Particle
{
  OddballParticle()
  {

  myX = 450;
  myY = 450;
  myAngle = (double)(Math.random()*2*Math.PI);
  mySpeed = (double)(Math.random()*10);
  }
  void show()
  {

    
    // CARROT CODE JUST IN CASE:
    //triangle((float)myX, (float)myY, (float)myX + 15, (float)myY + 30, (float)myX + 25, (float)myY + 1);
    
    
    
    //FISH CODE:
    fill(79, 195, 247);
    ellipse((float)myX, (float)myY, 30,15);
    triangle ((float)myX+15, (float)myY, (float)myX+20, (float)myY+7, (float)myX+20, (float)myY-7);
    ellipse((float)myX-5, (float)myY, 1,4);
    
  }
  void move()
   {
    myX = myX + (double)Math.cos(myAngle) * mySpeed;
    myY = myY +(double)Math.sin(myAngle) * mySpeed;
    if(mousePressed)
    {
      myX = mouseX;
      myY = mouseY;
   
    }
  }
}
