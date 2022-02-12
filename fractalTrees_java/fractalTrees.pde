//float angle = (mouseX-(width/2))*(TWO_PI);

float firstLen = 200;      // Länge des ersten Stammes
float lengthFactor;
float angle;

void setup(){
  size(500,500);


}

void draw(){
  smooth();
  background(51);
  stroke(255);
  
  lengthFactor = map(mouseX, 0, width, 0.1, 0.9);
  angle = map(mouseY, 0, height, 0.1, 0.9);
  translate(width/2,height);

  drawBranch(firstLen*lengthFactor);

}

//______________________________________draw branch

public void drawBranch(float len){
    line(0,0,0,-len);
    translate(0,-len);

    if(len>3){
      pushMatrix();
      rotate(angle);
      drawBranch(len*lengthFactor);
      popMatrix();
      pushMatrix();
      rotate(-angle);
      drawBranch(len*lengthFactor);
      popMatrix();
    }    
    
}
