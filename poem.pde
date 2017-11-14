void setup() {
  size(1280, 820);  // Size must be the first statement
  stroke(255);     // Set line drawing color to white
  frameRate(30);
}
void draw (){
  for(int x = 15; x < 300; x +=30){
    for(int y = 0; y <300; y +=30) 
    triangle(x,y, x-15,y +30,x +15,y +30);
    }

 
   for (int x = 0; x < width; x+=10) {
    for (int y = 0; y < height; y+=10) {
      noStroke();
      fill(random(255));
      rect(x, y, 10, 10);
    }
  } 

}