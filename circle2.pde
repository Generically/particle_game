void circledraw(){    
  for(int i = Circle.size()-1; i >= 0; i--){
    circle c = Circle.get(i);
    c.show();
    c.update();
    if(c.particleAlive != true){
      Circle.remove(i);
      
      
      Circle.add(new circle());
      if(int(random(0,10)) == 5){
        Circle.add(new circle());
        if(hardmode){
          momentum += 0.08;
        }
        else{
          momentum += 0.02;
        }
      }
    }
  }
}
