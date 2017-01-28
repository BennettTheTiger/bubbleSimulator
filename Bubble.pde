class Bubble{
  float speed;
  int size;
  int xPos;
  float yPos;
  color bubbleColor; 
  
  Bubble(float p_speed, int p_size, int p_x, float p_y,color p_color){
    speed = p_speed;
    size = p_size;
    xPos = p_x;
    yPos = p_y;
    bubbleColor = p_color;
  }
  
  void moveBubble(){
    speed += random(.05);//rate that the bubble can accel at
    yPos -= speed;
    fill(bubbleColor);
    ellipse(xPos,yPos,size,size);//draw the bubble
    //if the bubble is off the screen wrap it to the bottom
   if(yPos < -10){
     newBubble();
   }
    
  }
  //This function resets the bubble to the bottom to float to the top again and new asset values
  void newBubble(){
    size = int(random(5,11)); 
    yPos = height + size + 10; 
    speed = .1;
    xPos = int(random(size,width-size));//a new xPos to keep in real
    
  }
  
  
}