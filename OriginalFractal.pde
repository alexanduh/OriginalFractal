int len = 200;
int col1 = (int)(Math.random()*255);
int col2 = (int)(Math.random()*255);
int col3 = (int)(Math.random()*255);
public void setup()
{
  size(600, 600);
  rectMode(CENTER);
}
public void draw()
{
  background(0);
  fill(col1, col2, col3);
  fractal(300, 300, len);
}
// public void mouseClicked()
// {
//   col1 = (int)(Math.random()*255);
//   col2 = (int)(Math.random()*255);
//   col3 = (int)(Math.random()*255);
//  if(len <= 20)
//    len = 500;
//   else
//     len = len/2;
// }
public void fractal(int x, int y, int len) 
{
  if(len <= 5) {
    rect(x, y, len, len);
  }
  else {

    rect(x + len, y, len , len);
    rect(x - len, y, len, len);
    rect(x + len, y - len, len, len);
    rect(x - len, y - len, len, len);
    rect(x + len, y + len, len, len);
    rect(x - len, y + len, len, len);
    rect(x, y + len, len, len);
    rect(x, y - len, len, len);
    fractal(x, y, len/2);
  }
}
