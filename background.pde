void setup() {
  size(1920, 1080); //set the size
  background(255, 223, 148); 
  noStroke();
  noLoop();
}

void draw() {
  //spot in background
  noStroke();
  fill(122, 222, 174);
  int X = height/20;
  int Y = height/20;
  while(Y < height){
    ellipse(X, Y, height/40, height/40);
    X=X+height/10;
    if(X>= width){ 
      X=height/20;
      Y=Y+height/10;
    }
  }
  
  //rectangle left bottom
  fill(78, 81, 110);
  rect(width/40,height*28/40,width*8/40,height*6/40, 15,15,15,15);//淺色
  fill(56, 59, 84);  //RGB color
  rect(width/40,height*30/40,width*29/40,height*9/40, 0,15,15,15);//深色
  fill(255);
  rect(width*1.5f/40,height*31/40,width*28/40,height*7/40, 15,15,15,15);//白
   
  //rectangle righttop
  fill(56, 59, 84);  
  rect(width*30.5f/40,height*1/40,width*9/40,height*29/40, 15,15,15,15);//深色
  fill(255);
  rect(width*31/40,height*3/40,width*8/40,height*26/40, 15,15,15,15);//白
  
  //text
  //font
  PFont Seto;
  // The font "andalemo.ttf" must be located in the 
  // current sketch's "data" directory to load successfully
  Seto = createFont("setofont.ttf", 32);
  
  String sCR = "Chat Room";
  fill(255);
  textSize(32);
  textFont(Seto);
  text(sCR, width*3.5f/40,height*29.5f/40);

  
  String sTDL = "To Do List";
  text(sTDL, width*33.5f/40,height*2.5f/40);
  
  int HowManyThings = 4;
  String[] s = new String[HowManyThings] ;
  //s[i]="type your words"
  s[0] = "中文";
  s[1] = "123456789012345687901234567890123456789";
  s[2] = "English";
  s[3] = "4";
  fill(0);
  int k_sub = 0;
  int stringLength;
  for(int k=0 ; k<HowManyThings ; k++){
    fill(0);
    circle(width*32/40, height*(4.5+1.75*(k+k_sub))/40, height/100);
    text(s[k], width*32.5/40, height*(3.8+1.75*(k+k_sub))/40, width*6/40, height);
    stringLength = s[k].length();
    while(stringLength > 18){
      k_sub++;
      stringLength=stringLength-18;
    }
  }
  saveFrame("background.png");
}
