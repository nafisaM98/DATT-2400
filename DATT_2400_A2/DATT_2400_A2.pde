float circlex;
float xspeed=10;
float a=0;
float r= 300;

void setup(){
size(600,200);
circlex=0; 

}

void draw(){
  background(15);

 float x=r*tan(a);
 float y=r*sin(a);
 ellipse(x,y,30,30);
 a=a+0.02;
 
 ellipse(circlex,height/2,32,32);
  circlex=circlex+xspeed;
 if (circlex>width || circlex<0){
   xspeed=xspeed*-1;
  }
  
drawCircle(width/2,width/2,10);
}

void drawCircle(float x,float radius,int i){
  ellipse (x,height/2,radius/2,radius/2);
  
  if (i>1){
  drawCircle (x-radius/2,radius/2,i-1);
  drawCircle(x+radius/2,radius/2,i-1);
  
  }
 //saveFrame("####_A2.jpg");
}
  
