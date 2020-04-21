ArrayList<PImage> kermit;
int n = 0;

void setup () {
  size (358, 200);
  kermit = new ArrayList<PImage>();
  int i = 0;
  while (i < 34) {
    String zero = "";
    if (i < 10) zero = "0";
    kermit.add(loadImage("frame_" + zero + i + "_delay-0.07s.gif"));
    i++;
  } 
}

void draw() {
  PImage frame = kermit.get(n);
  image(frame, 0, 0, width, height);
  n++;
  if (n > 34) n = 0;
}
