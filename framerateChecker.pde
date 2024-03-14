void checkFPS(){
  if(frameCount > 100){
    if(frameRate < 100){
      textSize(20);
      text("your framerate of " + int(frameRate) + " is sub optimal and your play expirience may differ from regular play", width/3,height/10);
    }
  }
}
