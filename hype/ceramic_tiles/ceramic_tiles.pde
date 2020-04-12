import hype.*;
import hype.extended.colorist.HColorPool;
import hype.extended.layout.HGridLayout;

HDrawablePool pool;
HColorPool colors;

void setup() {
  size(600, 600);
  H.init(this).background(#333333);
  smooth();

  colors = new HColorPool(
    #ff5252, #84817a, #227093, #33d9b2, #ffda79, #aaa69d, #218c74, #f7f1e3
    // #f71735, #41ead4, #ff9f1c, #ffd447, #700353, #ffbfb7
    // #f59d16, #f08a26, #a6380a, #6b8fb1, #1e516c
    // #f0ff00, #ffb400, #b000ff, #ff00a7, #00c5ff
  );

  pool = new HDrawablePool(255);
  pool.autoAddToStage()
    .add(new HShape("pattern0.svg"))
    .add(new HShape("pattern1.svg"))
    .add(new HShape("pattern2.svg"))
    .add(new HShape("pattern3.svg"))
    .add(new HShape("pattern4.svg"))
    .layout(
       new HGridLayout()
         .spacing(40, 40)
         .cols(15)
    )
    .onCreate(
      new HCallback() {
        public void run(Object obj) {
          HShape d = (HShape) obj;
          d
            .enableStyle( false )
            .strokeJoin(ROUND)
            .strokeCap(ROUND)
            .strokeWeight(2.0)
            .stroke(#FFFFFF)
            ;
          d.randomColors( colors.fillOnly() );
        }
      }
    )
    .shuffleRequestAll()
    ;
  H.drawStage();
}

void draw() {
}
