class Quadrants
{
  color colour = color(53, 0, 31);
  color colour2 = color(231, 218, 221);
  float w = width/2;
  float h = height/2;
  float x1 = 100;
  float y1 = 255;
  float w1 = w-100;
  float h1 = h-(120+height/8)-10;
  float y2 = y1+h1+25;
  String[] QuadText = {"LEFT QUADRANT ACTIVE", "RIGHT QUADRANT STANDBY", "TERTIARY SYSTEMS", "BACK-UP SYSTEM", "LOAD ASSESS", "BINARY MOD.", "SEQUENCE Q", "OVER-RIDE #", "EMPTY"};

  void tlQuad()
  {
    fill(colour);
    stroke(255);
    rect(x1, y1, w1, h1);
    
    fill(colour2);
    stroke(255);
    rect(x1, y1, w1/3, h1);
    
    stroke(255);
    fill(colour);
    ellipse(x1+w1/6, y1+h1/4, 115, 115);
    //text
    
    stroke(255);
    fill(colour);
    ellipse(x1+w1/6, y1+h1/4+130, 115, 115);
    
    for(float i = y1; i < (y1+w1/5)+h1; i += h1/8)
    {
      line(x1+w1/3, i, (x1+w1/3+w1)-(w1/3), i);
    }
    fill(255);
    textSize(20);
    text(QuadText[0], (x1+w1/3)+10, y1+25);
  }
  
  void trQuad()
  {
    fill(random(0,255),random(0,255),random(0,255));
    stroke(255);
    rect(w, y1, w1, h1);
    
    fill(colour);
    stroke(255);
    rect(w, y1, w1-w1/3, h1);
     
    for(float i = y1; i < (y1+w1/5)+h1; i += h1/8)
    {
      line(w, i, w+w1-w1/3, i);
    }
    
    for( float i = w+w1-w1/3; i < w+w1; i+=15)
    {
      strokeWeight(2);
      line(i, y1, i, 529);
    }
  }
  
  void blQuad()
  {
    fill(colour2);
    stroke(255);
    rect(x1, y2, w1-100, h1+50);
    
    for( float i = x1; i < x1+(w1-100); i+=20)
    {
      strokeWeight(0.5);
      line(i, y2, i, y2+h1+50);
    }
    for( float i = y2; i < y2+(h1+50); i+=10)
    {
      strokeWeight(0.5);
      line(x1, i, x1+w1-100, i);
    }
    textSize(20);
    int bin = int(random(0,1000000000));
    fill(colour);
    text(bin, x1+10, y2+(h1+40));
  }
  
  void brQuad()
  {
    fill(colour2);
    stroke(255);
    rect(w+100, y2, w1-100, h1+50);
    
    for( float i = w+100; i < w+100+(w1-100); i+=20)
    {
      strokeWeight(0.5);
      line(i, y2, i, y2+h1+50);
    }
    for( float i = y2; i < y2+(h1+50); i+=10)
    {
      strokeWeight(0.5);
      line(w+100, i, w+w1-100, i);
    }
    textSize(20);
    int bin = int(random(0,1000000000));
    fill(colour);
    text(bin, w+740, y2+(h1+40));
  }
}