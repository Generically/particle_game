long frames;
long score;
void scorer(){
  
  if(second() > frames){
    frames = second();
    score += 1;
  }
  
  if(frames > second()){
    frames = second();
    score += 1;
  }
  
    fill(#025e57);
    textSize(20);
    text("SCORE:" + score,10,20);
}
