Taxis [] dots, dots1;
Car [] bobs;
void setup(){
 size(500, 500);

 dots = new Taxis[1000];
 
 for(int i = 0; i < dots.length;i++){
   dots[i] = new Taxis();
 }
  bobs = new Car[500];
  for(int i = 0; i < bobs.length; i++){
  bobs[i] = new Car(i*2,(int)(Math.random()*500), i+(int)(Math.random()*10),(int)(Math.random()*20)); 
  }
}

void draw(){
  fill(0);
  rect(250, 250, 200, 200, 50);
  fill(255);
  rect(250, 250, 100, 100, 50);
for(int i = 0; i < dots.length;i++){
  dots[i].move();
  dots[i].colour();
  dots[i].show();
}
 for(int i =0; i < bobs.length;i++){
  bobs[i].move();
  bobs[i].show();
  }
  
}

void mouseDragged(){

}


class Taxis{
 int myX, myY, mX, mY, size, rgb;
  Taxis(){
    size = 50;
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    rgb = color((int)(Math.random()*255),(int)(Math.random()*25), (int)(Math.random()*255),100);
  }
  void move(){
  if(keyPressed == true){
    if(key == CODED){
      if(keyCode == UP){
      myY = myY + (int)(Math.random()*20)-15;
      size++;
    } else if(keyCode == DOWN){
      myY = myY + (int)(Math.random()*20)-5;
      size++;
    } else if(keyCode == LEFT){
      myX = myX + (int)(Math.random()*20)-15;
      size++;
    } else if(keyCode == RIGHT){
      myX = myX + (int)(Math.random()*20)-5;
      size++;
    }
   } else {
     size--;
   }
  }
    
  if(mousePressed == true){
   size++;
  if(mouseX > myX && mouseY > myY){
     myX = myX + (int)(Math.random()*20)-5;
     myY = myY + (int)(Math.random()*20)-5;
  } else if(mouseX < myX && mouseY < myY){
     myX = myX + (int)(Math.random()*20)-15;
     myY = myY + (int)(Math.random()*20)-15;
  } else if(mouseX < myX && mouseY > myY){
    myX = myX + (int)(Math.random()*20)-15;
    myY = myY + (int)(Math.random()*20)-5; 
  } else if(mouseX > myX && mouseY < myY){
    myX = myX + (int)(Math.random()*20)-5;
    myY = myY + (int)(Math.random()*20)-15; 
  } 
  } else {
    if(size > 0)
    size-=2;
    else
    size = 0;
    myX = myX + (int)(Math.random()*50)-25;
    myY = myY + (int)(Math.random()*50)-25; 
    }  

  }
  
 void colour(){
  
  if(keyPressed == true){
     if(key == 'r' || key == 'R'){
      rgb = color((int)(Math.random()*255),(int)(Math.random()*25), 0, 100); 
     } else if(key == 'b' || key == 'B') {
      rgb = color(0,(int)(Math.random()*25), (int)(Math.random()*255),100);
     } else if(key == 'g' || key == 'G'){
      rgb = color(0,(int)(Math.random()*255), (int)(Math.random()*25),100); 
     } else if(key == 'y' || key == 'Y'){
      rgb = color((int)(Math.random()*55) + 200, (int)(Math.random()*55) +200, 0,100);
     } else if(key == 'o' || key == 'O'){
       rgb = color((int)(Math.random()*25), (int)(Math.random()*255), (int)(Math.random()*255),100);
     } else if(key == 'w' || key == 'W'){
       rgb = color((int)(Math.random()*25) + 220, (int)(Math.random()*25) + 220, (int)(Math.random()*25) + 220,50);
     } else {
       rgb = color((int)(Math.random()*255),(int)(Math.random()*25), (int)(Math.random()*255),100); 
  
  }

  }
   
 }
  void show(){
   
   fill(rgb);
   noStroke();
   ellipse(myX, myY, size, size); 
  }
  
}
class Car{
  color myC;
  float myX, myY, myXspeed;
  
  Car(){
    myC = color(255);
    myX = width/2;
    myY = height/2;
    myXspeed = 1;
  }
  Car(color c, float x,float y, float s){
   myC = c;
   myX = x;
   myY = y;
   myXspeed = s;
  }


  
  void show(){
   rectMode(CENTER);
   fill(myC, 0, 0);
   rect(myX, myY, 20, 10);
  }
  
  void move(){
   myX += myXspeed;
   myY += myXspeed;
   if(myX > width){
     myX = 0;
   }
  
  }
}//end Car class
