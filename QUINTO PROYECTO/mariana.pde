PImage p1,p2,p3,t1,t2;
int value=0,v=0;


void setup()
{
  size (900,600);
  
  p1 = loadImage ("p1.png");
  p2 = loadImage ("p2.png");
  t1 = loadImage ("c1.png");
  t2 = loadImage ("c2.png");
}

void draw()
{
  background (0);
  
  if (value==0)
  {
    image (p1,0,0,width,height);
    
    if ((mouseX>380) && (mouseX<380+180) && (mouseY>400) && (mouseY<400+180))
  {
    value=1;
  }
  }
  
  if (value==1)
  {
    image (p2,0,0,width,height);
    
    if (keyPressed==true)
    {
      v=v+1;
      println (v);
      
      if (v==2)
      {
        switch (key)
        {
          case 'a':
          value=2;
          break;
          
          case 'b':
          value=3;
          break;
          
          case 'c':
          value=2;
          break;
          
          case 'd':
         value=3;
          break;
          
          case 'e':
          value=2;
          break;
          
          case 'x':
          value=3;
          break;
        }      
      }
    }
  }
  
  if (value==2)
  {
    image (t1,0,0,width,height);
  }
  
  else if (value==3)
  {
    image (t2,0,0,width,height);
  }
}