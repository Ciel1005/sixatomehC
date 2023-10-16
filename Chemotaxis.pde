Taxis [] dots, dots1;
void setup(){
 size(500, 500);

 dots = new Taxis[1000];
 
 for(int i = 0; i < dots.length;i++){
   dots[i] = new Taxis();
 }
}

void draw(){
  fill(0);
  rect(0, 0, 500, 500);
for(int i = 0; i < dots.length;i++){
  dots[i].move();
  dots[i].colour();
  dots[i].show();
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
