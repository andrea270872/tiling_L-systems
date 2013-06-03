
color BLACK = color(  0);
color WHITE = color(255);

class Picture{
PImage img;
Rule ruleBlack,ruleWhite;

  public Picture(int width,int height,color col){
    img = new PImage(width,height,ALPHA);
    
    for (int i = 0; i < img.width*img.height; i++) { 
      img.pixels[i] = col;
    }
    img.updatePixels();
  }
  
  void update(){
    PImage tmp = new PImage(img.width*2,img.height*2,ALPHA );
    
    color a,b,
          c,d;
    color col;
          
    Rule rule;       
    for (int j = 0; j < this.img.height; j++) {
      for (int i = 0; i < this.img.width; i++) {
        col = this.img.get(i,j);
              
        if (col==WHITE){
          rule = this.ruleBlack; 
        } else {
          rule = this.ruleWhite; 
        }
        
        tmp.set(i*2  ,j*2  , rule.a ); tmp.set(i*2+1,j*2  , rule.b );
        tmp.set(i*2  ,j*2+1, rule.c ); tmp.set(i*2+1,j*2+1, rule.d );
      }
    } 
    
    this.img = tmp;
  }  
  
  
  void setRules(Rule rBlack, Rule rWhite){
    this.ruleBlack = rBlack;
    this.ruleWhite = rWhite;
  }
}
