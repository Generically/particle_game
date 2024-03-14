void remove(){
  for(int i = Circle.size()-1; i >= 0; i--){
    Circle.remove(i);
  }
  
  momentum = 0.25;
  started = false;
  hardmode = false;
  pause = false;
  frames = 0;
  score = 0;
  snakemode = false;
  solidiermode = false;
  smilemode = false;
  stopsignmode = false;
}
