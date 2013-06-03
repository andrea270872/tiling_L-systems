// FROM: http://lcni.uoregon.edu/~dow/Geek_art/Simple_recursive_systems/2-D/2x2_Symmetric/2x2_symmetric_L-systems.html

Picture pic;

void setup() {
  size(800,800);
  frameRate(1);
  noSmooth();
  
  pic = new Picture(1,1, color(0) );
  
  // Hadamard matrix
  Rule ruleBlack = new Rule(BLACK,BLACK,
                            BLACK,WHITE);
  Rule ruleWhite = new Rule(WHITE,WHITE,
                            WHITE,BLACK);
  pic.setRules(ruleBlack,ruleWhite);               
}

void draw() {
  background(0);
  image(pic.img, 0, 0, 800,800);
  step();
}

int iteration=0;

void mousePressed() {
  //step();
}

void step(){
  if (iteration<=9){
    pic.update();
    iteration++;
    //print(pic.img.width+" ");
    print(iteration+"\n");
  }
}
