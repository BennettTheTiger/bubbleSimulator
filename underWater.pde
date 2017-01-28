//Bennett Schoonerman
//Underwater bubble sim
//1/27/2017

Bubble[] myBubbles;
void setup(){
  myBubbles = new Bubble[100];//total number of bubbles
  size(500,500);
  noStroke();
  
  for(int i = 0;i<myBubbles.length;i++){
    int size = int(random(5,10));
    myBubbles[i] = new Bubble(.1,size,int(random(size,width-size)),random(-10,height+15),color(255,255,255,random(100)));
  }//end bubble builder
}//end setup 

void draw(){
  background(#1E678E);//water color
  for(int i = 0;i<myBubbles.length;i++){
    myBubbles[i].moveBubble();
  }
}