Border b;
Circle c;
PerpEllipse p;
Quadrants q;
PerpEllipse2 p2;

color colour2 = color(0, 0, 255);
float x1 = 100;
float y1 = 255;
float w = width/2;
float h = height/2;
float h1 = h-(120+height/8)-10;
float w1 = w-100;
float angle = 0;

void setup()
{
  fullScreen();
  b = new Border();
  c = new Circle();
  p = new PerpEllipse();
  q = new Quadrants();
  p2 = new PerpEllipse2();
}

void draw()
{
  background(0);
  q.tlQuad();
  q.trQuad();
  q.blQuad();
  q.brQuad();
  c.circle();
  c.circle1();
  p.perpEllipseRotation();
  c.arcs();
  c.arcs1();
  c.circle2();
  c.circle3();
  b.black();
  p2.perpEllipseRotation2();
}


  