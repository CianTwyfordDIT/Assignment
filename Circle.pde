 class Circle
 {
  float w = width/2;
  float h = height/2;
  float w1 = width/3;
  float w2 = width/4;
  color colour1 = color(53, 0, 31);
  color colour2 = color(230, 244, 230);
  color colour3 = color(99, 84, 101);
  float r = PI/4;
  
  void circle()
  {
    fill(255);
    stroke(0);
    strokeWeight(4);
    ellipse(w, h, w1, w1);
  }
  
  void circle1()
  {
    fill(colour1);
    ellipse(w, h, w1-15, w1-15);
  }

  void arcs()
  {
    stroke(colour2);
    strokeWeight(2.5);
    arc(w, h, w2, w2, 0+r, 0+r*3);
    stroke(colour2);
    strokeWeight(2.5);
    arc(w, h, w2, w2, PI+r, PI+r*3);
  }
  
  void arcs1()
  {
    fill(colour2, 90);
    noStroke();
    arc(w, h, (w2)-10, (w2)-10, PI/2, 3*PI/2);
  }
    
  void circle2()
  {
    fill(colour3, 250);
    stroke(255);
    ellipse(w, h, w1-220, w1-220);
  }
  
  void circle3()
   {
    fill(colour1, 250);
    stroke(255);
    ellipse(w, h, w1-300, w1-300);
  }
 }