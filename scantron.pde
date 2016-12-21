int lnScale = 5;
PFont f;
int questions = 50;
void setup() {
  size(300,700);
  f = createFont("scantron_full", 16, true);
}

void draw() {
  background(255);
  textFont(f,10);
  fill(0, 100, 0); // change to green
  numbers();
  //boxes();
  noFill();
  stroke(0, 100, 0);
  letters();
  fill(0);
  answers();
  noLoop();
}

void mousePressed(){
  redraw(); 
}
void numbers(){
  //textFont(f, 20);
  //fill(0);
  float y = 102.35;
  float x = 20;
  int count = 1;
  for(int k = 1; k <= questions; k++)
    {
      if(k % 10 == 0 && k != 50)
        rect(x, y + 2, 160, 0.299);// horizontal line
      if(k % 10 == 0 && count % 2 == 1)
        rect(x - 1, y + 2, 0.299, 115); 
      text(k, x, y);
      y += 11.5;
      if(k % 10 == 0 && k < questions - 10)
        count++;
    }
}

void letters() {
 float y = 96;
 for(int row = 1; row <= questions; row++){
   float x = 35;
   for(int col = 1; col <= questions; col++){
       if(col == 1)
       {
          stroke(0, 100, 0);
          rect(x, y, 20, 5);
          text('A', x + 7, y + 5.5);         
       }
       if(col == 2)
       {
          stroke(0, 100, 0);
          rect(x + 30, y, 20, 5);
          text('B', x + 36.5, y + 5.5);         
       }
       if(col == 3)
       {
          stroke(0, 100, 0);
          rect(x + 60, y, 20, 5);
          text('C', x + 66.5, y + 5.5);         
       }
       if(col == 4)
       {
          stroke(0, 100, 0);
          rect(x + 90, y, 20, 5);
          text('D', x + 96.5, y + 5.5);
       }
       if(col == 5)
       {
          stroke(0, 100, 0);
          rect(x + 120, y, 20, 5);
          text('E', x + 127.5, y + 5.5); 
       }
     }
     y += 11.5;
 }
}

void answers() { 
  float y = 96;
  double a = .22;
  double b = .44;
  double c = .66;
  double d = .88;
  for(int row = 1; row <= questions; row++){
    boolean hasAnswer = false;
    float x = 35;
    for(int col = 1; col <= 5; col++){
        if(!hasAnswer){
          System.out.print("Question #" + row + 
               " " + col + " " + hasAnswer + " ");
              double rand = Math.random();
              System.out.print(rand);
              if(rand <= a)
              {
                  rect(x , y, 20, 5);
                  hasAnswer = true;
                  System.out.print(" a");
              }
              else if(rand > a && rand <= b)
              {
                  rect(x + 30, y, 20, 5);
                  hasAnswer = true;
                  System.out.print(" b");
              }
              else if(rand > b && rand <= c)
              {
                  rect(x + 60, y, 20, 5);
                  hasAnswer = true;  
                  System.out.print(" c");
              }
              else if(rand > c && rand <= d)
              {
                  rect(x + 90, y, 20, 5);
                  hasAnswer = true;
                  System.out.print(" d");
              }          
              else if(rand > d)
              {
                  rect(x + 120, y, 20, 5);
                  hasAnswer = true;
                  System.out.print(" e");
              }
              System.out.print("\n");
        }
    }
    y += 11.5;
  }
} 