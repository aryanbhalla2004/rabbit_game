import ddf.minim.*;
Minim minim;
AudioPlayer player;
int x,y;
int w,h;
PImage startscreen; 
//BACKGROUND
PImage rabit; 
// charater 1
PImage rabits;
// charater 1
PImage turtle;
// finish line
PImage Finish;
// title
PFont title;
// scrren width, height and stahe 1,2, 3
int screenwidth,screenheight, stage;
//center width,height
int Centerwidth;
int Centerheight;
void setup() {
    // x and y for rabbit
    x = 10;
    y = 450;
    //w and h for turtle 
    w = 10;
    h = 1050;
    Centerwidth = width/2;
    Centerheight = height/2;
    // stage
    stage = 1;
    // screen size
    fullScreen();
    // frame rate
    frameRate(240);
    //screen and width and height
    screenwidth = width;
    screenheight = height; 
    // background rabit
    rabit = loadImage("rabit.jpg");
    
    // finish line img
    Finish = loadImage("finish.jpg");
    //rabits charater
    rabits = loadImage("rabit.jpg");
    //turtle charater
    turtle = loadImage("turtle.jpg");
    // img rabit background
    image(rabit,0,0,screenwidth,screenheight);
    // title size and font
    title = createFont("font",1000,true);
    // background music
    minim = new Minim(this);
    player = minim.loadFile("music.mp3");
}
  
void draw() {
    // stage 1
    if(stage==1){
      // music play
      player.play();
      // text size
      textSize(80);
      textAlign(CENTER);
      //text
      text("WELCOME TO RACE",955,480);
      //text size
      textSize(50);
      text("PRESS ANY KEY TO START THE GAME",960,570);
      //key press for main screen
      if(keyPressed == true) {
        stage = 2;
    }
    // or it will stay at stage 1
   else{
        stage = 1;
     }
}
      // stage 2
      if(stage==2){
        // smooth gam
        smooth();
        //background color
        background(0);
        // rabit charater
        image(rabits,x,y,200,200);
        // rabit charater
        image(turtle,w,h,200,200);
        // line on the side
        stroke(255);
        strokeWeight(10);
        line(220,0,220,2000);
        //line in the center
        stroke(255);
        strokeWeight(10);
        line(3200,900,0,900);
        image(Finish,2600,0,150,2000);
     }
     //finish line statement
     if( y  >= 710) {
        stage = 3;
      }
      // stage 3
      if(stage==3){
        //background for tage 3
        background(255);
        // text size and font
        textSize(100);
        fill(255,0,0);
        text("GAME OVER!!!" ,Centerwidth,Centerheight);
        textSize(200);
        text("TURTLE WIN" ,1390,1200);
        ;
      }
      if( h  <= 890) {
        stage = 4;
      }
      //stage 4
      if(stage==4){
        // background
        background(255);
        //text game
        textSize(100);
        fill(255,0,0);
        text("GAME OVER!!!" ,Centerwidth,Centerheight);
        textSize(200);
        text("RABBIT WIN" ,1390,1200);
      }
      // rabit win stage
      if(x >= 2420){
        background(0);
        textSize(200);
        text("RABBIT WIN" ,1390,1200);
      }
      // turtle win
      if(w >= 2420){
        background(0);
        textSize(200);
        text("TURTLE WIN" ,1390,1200);
      }
  }
  
  
  void keyPressed() {
    smooth();
    // up key for rabbit
    if(key == 'w' || key == '=')
    {
  
      y = y - 10;  
    }
    // down key for rabbit
    if(key == 's' || key == ']')
    {    y = y + 10; 
    }
    // left key for rabbit
    if(key == 'a' || key == '[')
    {
      x = x - 10; 
    }
    // right key for rabbit
    if(key == 'd' || key == 'p')
    {
      x = x + 10; 
    }
    //up key for turtle
    if(key == 'i')
    {
      h = h - 10;  
    }
    //down key for turtle
    if(key == 'k')
    {
      h = h + 10; 
    }
    // left key for turtle
    if(key == 'j')
    {
      w = w - 10; 
    }
    //right key for turtle
    if(key == 'l')
    {
      w = w + 10; 
    }
    
  }
