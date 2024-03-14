ArrayList<circle> Circle = new ArrayList<circle>();
double momentum = 0.25;
boolean started = false;
boolean hardmode = false;
boolean pause = false;

  PImage start;
  PImage quickstart;
  PImage superfastmode;
  PImage snake;
  PImage smile;
  PImage solidier;
  PImage stopsign;

public void setup(){
  
  start = loadImage("start.png");
  quickstart = loadImage("quickstart.png");
  superfastmode = loadImage("superfastmode.png");
  
  snake = loadImage("snake.png");
  smile = loadImage("creepy_smile.png");
  solidier = loadImage("soldier.png");
  stopsign = loadImage("stopSign.png");
  
  start.resize(width/3,height/6);
  quickstart.resize(width/3,height/6);
  superfastmode.resize(width/3,height/6);
  
  snake.resize(20, 20);
  smile.resize(20, 20);
  solidier.resize(20, 20);
  stopsign.resize(20, 20);
  
  frameRate(120);
  
  fullScreen();
     
  ellipseMode(CENTER);
  rectMode(CENTER);
    
  /*
    //start
  rect(width/2,height/5.5,width/3,height/5);
  
    //quickstart
  rect(width/2,height/2.15,width/3,height/5);
  
    //superfastmode
  rect(width/2,height/1.33,width/3,height/5);
  */
  
  background(#3fccc1);
  
  image(start,width/3,height/10);
  image(quickstart,width/3,height/2.6);
  image(superfastmode,width/3,height/1.5);
}

void draw(){
  if(started != true){
    mainmenu();
  }
  
  if(started){
    if(pause != true){
      background(0);
      scorer();
      circledraw();
    }
  }
  
    if(started){
      if(pause){
        if(keyPressed){
          if(key == ' '){
            remove(); 
            pause = false;
            started = false;
          }
        }
      }
    }
    checkFPS();
    cheats();
}
