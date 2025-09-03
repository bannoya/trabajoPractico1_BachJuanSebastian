class Bala extends GameObject {
  private float r = 5;
  private PVector dir;

  public Bala(float x, float y, PVector dir) {
    super(x, y, 6);
    this.dir = dir.copy();
  }

  public void update() { pos.add(PVector.mult(dir, vel)); }

  public void draw() {
    noStroke();
    fill(255);
    circle(pos.x, pos.y, r*2);
  }
}
