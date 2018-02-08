
int r = 255;
int g = 255;
int b = 255;
public void setup()
{
  size(500,460);
}
public void draw()
{

  background(255,255,255);
  noStroke();
  fill(r,g,b);
 sierpinski(100,80,100);
 sierpinski(300,80,100);
 sierpinski(80,350,350);
 sierpinski(20,150,100);
 sierpinski(375,150,100);
 sierpinski(20,460,100);
 sierpinski(205,457,100);
 sierpinski(380,457,100);
 sierpinski(220,260,60);
 sierpinski(-255,350,350);
 sierpinski(420,350,350);
  
}
public void mousePressed()//optional
{
  r = (int)(Math.random()*255);
  g = (int)(Math.random()*255);
  b = (int)(Math.random()*255);
}
public void sierpinski(float x, float y, int len) 
{
  if(len <= 20){
    triangle(x,y,x+len/2,y-len,x+len,y);
  }
  else{
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);

  }
}
