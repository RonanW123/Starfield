SunParticles[] wazzzzupppp = new SunParticles[1000];
void setup(){
  background(0);
  size(500, 500);
  noStroke();
  for(int i = 0; i < 750; i++)
    wazzzzupppp[i] = new SnowParticles();
  for(int i = 750; i < wazzzzupppp.length; i++)
    wazzzzupppp[i] = new SunParticles();
}
void draw(){
  background(0);
  
  //SunParticles
  for(int i = 750; i < wazzzzupppp.length; i++){
    wazzzzupppp[i].show();
    wazzzzupppp[i].move();
  }
  
  //Sun
  fill(255, 255, 0);
  ellipse(250, 300, 150, 150);
  //Floor
  fill(255);
  rect(0, 300, 500, 200);
  
  //Trees
  fill(101, 67, 33);
  rect(65, 350, 50, -200);
  rect(385, 350, 50, -200);
  fill(66, 105, 47);
  triangle(90, 50, 20, 250, 160, 250);
  triangle(410, 50, 480, 250, 340, 250);
  
  //SnowParticles
  for(int i = 0; i < 750; i++){
    wazzzzupppp[i].show();
    wazzzzupppp[i].move();
  }
}
class SunParticles
{
  int myColor;
  double myX, myY, myAngle, mySpeed;
  SunParticles(){
    myColor = color(255, 255, (int)(Math.random()*256));
    myX = myY = 250;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = (Math.random()*3);
  }
  void move(){
    myX += Math.cos(myAngle)*mySpeed;
    myY += Math.sin(myAngle)*mySpeed;
    if(myX < 0)
      myX = 250;
    if(myY < 0)
      myY = 250;
    if(myX > 500)
      myX = 250;
    if(myY > 500)
      myY = 250;
  }
  void show(){
    fill(myColor, 150);
    ellipse((float)myX, (float)myY, 50, 50);
  }
}

class SnowParticles extends SunParticles
{
  SnowParticles(){
    myColor = color((int)(Math.random()*256));
    mySpeed = (Math.random()*10)+1;
  }
  void move(){
    myX += Math.cos(myAngle)*mySpeed;
    myY += Math.sin(myAngle)*mySpeed;
    if(myX > 500)
      myX = 0;
    if(myY > 500)
      myY = 0;
  }
  void show(){
    fill(myColor, 175);
    ellipse((float)myX, (float)myY, 5, 5);
  }
}
