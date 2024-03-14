void mainmenu(){
  background(#3fccc1);
  image(start,width/3,height/10);
  image(quickstart,width/3,height/2.6);
  image(superfastmode,width/3,height/1.5);
      fill(#025e57);
    textSize(20);
    text("beta 1.0.3",10,20);
  
      if(mouseY> height/10.5 && mouseY <height/3.5 && mouseX > width/3 && mouseX < width / 1.5){
      if(mousePressed){
          Circle.add(new circle());
        started = true;
      }
    }
  
    if(mouseY > height/2.7 && mouseY < height/1.77 && mouseX > width/3 && mouseX < width / 1.5){
      if(mousePressed){
        momentum += 0.2;
        Circle.add(new circle());
        Circle.add(new circle());
        Circle.add(new circle());
        Circle.add(new circle());
        Circle.add(new circle());
        started = true;
      }
    }
    
    if(mouseY > height/1.55 && mouseY < height/1.156 && mouseX > width/3 && mouseX < width / 1.5){
      if(mousePressed){
          Circle.add(new circle());
        hardmode = true;
        started = true;
      }
    }
    
    ellipseMode(CENTER);
}
