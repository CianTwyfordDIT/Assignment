class PerpEllipse
{
  //Global Class Variables
  float innerD = 5;
  float outerD = 0;
  float seperation = -.3;
  float x = width/2;
  float y = height/2;
  float r = height/4;
  float l = height/100;
  float w = 2;
  float temp = 0;
  
  PerpEllipse()
  {
    
    
  }//end constructor 1
  
  PerpEllipse(float x,float y,float r,float innerD,float outerD,float seperation,float l,float w)
  {
    this.innerD = innerD;
    this.outerD = outerD;
    this.seperation = seperation;
    this.x = x;
    this.y = y;
    this.r = r;
    this.l = l;
    this.w = w;
    
    
  }//end constructor 2
  
  
  
  void outerChange()
  {
     if(outerD == 360)
     {
        outerD = 0;
        
     }
     else
     {
       outerD += seperation;
        
     }//end ifelse
    
    
   }//end fxn

  void perpEllipseCreation()
  {
    strokeWeight(w);
    stroke(255);
    
    for(int i = 0; i<360;i+=4)
    {
      pushMatrix();
        //Rotate Around external point
        rotate(radians(i));
        
        //Create New Centre on LIne
        translate(0,-r);
        
        //Rotate Around internal point
        rotate(radians(innerD));
        
        //Draw Line
        line(0,0,0,l);
      popMatrix();
      
    }//end for
   
  }//end fxn
  
  void perpEllipseRotation()
  {
    pushMatrix();
      //Increment or Reset outer
      outerChange();
      
      //Create New Centre in Middle of Screen
      translate(x,y);
      
      //Spin Ellipse
      rotate(radians(outerD));
      
      //Create Ellipse
      perpEllipseCreation();
    popMatrix();

    
  }//end fxn

}//end class