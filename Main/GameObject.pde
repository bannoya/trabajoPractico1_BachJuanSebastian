abstract class GameObject {
  protected PVector pos;
  protected float vel;

  GameObject(float x, float y, float vel) {
    this.pos = new PVector(x, y);
    this.vel = vel;
  }

  public void update() {
  }
  public abstract void draw();
}
