/*
/*
Bohan Chen 
11/13/2017
This is a visual poetry project done in Processing
Reference from the Pointillism example

This work is trying to describe that after the 19th National Congress of the Communist Party of China, 
president Xi Jinping became the most powerful Chinese leader in the past decades. 
It is also trying to refect my conern about the future: Red Terror，Freedom of Speech, 
Cult of personality, Political Correntness，etc.

It is pointillism work using his last name "Xi"

*/

PImage XijinpingisPowerful;
int LeadChineseDream;
int CreateTheFuture;
float NewEra;
PFont Socialism; 

import processing.sound.*;
SoundFile RedTerror;

void setup() {
  size(800, 1052);
  XijinpingisPowerful = loadImage("TheMostPowerfulMan.jpg");
  LeadChineseDream = 30;
  CreateTheFuture = 60;
  
  imageMode(CENTER);
  noStroke();
  background(#F6FFF8);//grey
  frameRate(30);
  smooth();
  Socialism = loadFont("Lato-Bold-48.vlw");
  
  RedTerror = new SoundFile(this, "HeroTheme.mp3");
  //RedTerror.play();
  RedTerror.loop();
}

void draw() {   
  float ChineseDream = map(mouseX, 0, width, LeadChineseDream, CreateTheFuture);
  int x = int(random(XijinpingisPowerful.width));
  int y = int(random(XijinpingisPowerful.height));
  color pix = XijinpingisPowerful.get(x, y);
  fill(pix, 128);
  textSize(random(20,40));
  text("Xi", x, y, ChineseDream, ChineseDream);
  
}