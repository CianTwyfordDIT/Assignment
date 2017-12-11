class Border
{
  color colour = color(0);
  color colour1 = color(53, 0, 31);
  float x = -10;
  float y = 150;
  float x1 = width/2;
  float y1 = 200;
  float b = height*0.73;
  
  void black()
  {
    //top
    noStroke();
    fill(colour);
    rect(0, 120, width, height/8);
    
    stroke(255);
    fill(colour1);
    quad(x, y, x1-100, y, x1-140, y1, x, y1);
    quad(width+10, y, x1+100, y, x1+140, y1, width+10, y1);
    noFill();
    quad(x1-65, y, x1+65, 150, x1+105, y1, x1-105, y1);
    textSize(20);
    int bin = int(random(0,1000000000));
    fill(255);
    text(bin, width/2-55, 185);
    
    //bottom
   stroke(255);
    fill(colour1);
    quad(x, y+b, x1-140, y+b, x1-100, y1+b, x, y1+b);
    quad(width+10, y+b, x1+140, y+b, x1+100, y1+b, width+10, y1+b);
    noFill();
    quad(x1-105, y+b, x1+105, 150+b, x1+65, y1+b, x1-65, y1+b);
    textSize(20);
    int bin2 = int(random(0,1000000000));
    fill(255);
    text(bin2, width/2-55, 185+b);
  }
}