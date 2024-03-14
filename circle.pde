boolean snakemode = false;
boolean solidiermode = false;
boolean smilemode = false;
boolean stopsignmode = false;

class circle{
  float x = random(10,width-10);
  float y = 10;
  boolean particleAlive = true;
 circle(){
   
 }
 
 void update(){
   if(mousePressed){
     if(mouseX < x + 10 && mouseX > x - 10){
       if(mouseY < y + 10 && mouseY > y - 10){
         particleAlive = false;
       }
     }
   }
   
   if(y > height){
     textSize(width/6);
     text("GAME OVER",10, height/2);
     pause = true;
   }
   y+=momentum;
 }
 
 void show(){
   if(snakemode != true && solidiermode != true && smilemode != true && stopsignmode != true){
     fill(255);
     noStroke();
     ellipse(x,y,20,20);
   }
   else{
     if(snakemode){
       image(snake,x,y);
       reset();
       snakemode = true;
     }
     
     if(solidiermode){
       image(solidier,x,y);
       reset();
       solidiermode = true;
     }
     
     if(smilemode){
       image(smile,x,y);
       reset();
       smilemode = true;
     }
     
     if(stopsignmode){
       image(stopsign,x,y);
       reset();
       stopsignmode = true;
     }
   }
 }
}
