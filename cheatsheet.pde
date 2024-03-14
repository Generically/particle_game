boolean tabmenu = false;

long textcounter = 0;

String str = str(key);
String st = "abcdefghijklmnopqrstuvwxyz";

String tabmenutext = "";

void cheats(){
  if(keyPressed && key == TAB){
    tabmenu = true;
  }
  
  if(tabmenu != true){
    tabmenutext = "";
  }
  
  if(tabmenu){
    pause = true;
    
    fill(0);
    rect((width/2), 15, width-10, 25);
    
    
    if(keyPressed && key == ENTER && tabmenutext == ""){
      tabmenu = false;
    }
    
    if(keyPressed && key == RETURN && tabmenutext == ""){
      tabmenu = false;
    }
    
    if(frameCount-50 > textcounter){
      if(tabmenutext != "" && tabmenutext != null){
        if(keyPressed && key == BACKSPACE){
          try{
            tabmenutext = tabmenutext.substring(0, tabmenutext.length()-1);
            textcounter = frameCount;
          }
          catch(Exception e){
          
          }
        }
      }
    }

    
    //print(tabmenutext.substring(0, tabmenutext.length()-1));
    if(tabmenu){
      if(keyPressed){
        str = str(key);
        if(match(st, str) != null){
          if(frameCount-50 > textcounter){
            textcounter = frameCount;
            tabmenutext += key;
          }
        }
      }
        fill(#025e57);
        textSize(20);
        text("command:" + tabmenutext,10,20);
    }
    
    if(keyPressed && key == ENTER){
      if(tabmenutext != ""){
        
        if(tabmenutext.contains("fast")){
          momentum += 10;
        }
        
        if(tabmenutext.contains("snake")){
          snakemode = true;
        }
        
        if(tabmenutext.contains("war")){
          solidiermode = true;
        }
        
        if(tabmenutext.contains("happy")){
          smilemode = true;
        }
        
        if(tabmenutext.contains("stop")){
          stopsignmode = true;
        }
        pause = false;
        tabmenu = false;
      }
    }
    
    if(keyPressed && key == RETURN){
      if(tabmenutext != ""){
        
        if(tabmenutext == "fast"){
          momentum += 10;
        }
        
        pause = false;
        tabmenu = false;
      }
    }
  }
}
