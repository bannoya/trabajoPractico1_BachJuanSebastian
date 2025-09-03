class Jugador extends GameObject {
  private float r = 15;

  private Jugador(float x, float y) { super(x, y, 3); }

  public void update() {
    if (keyPressed) {
      if (key == 'w' || keyCode == 'W')    pos.y -= vel;
      if (key == 's' || keyCode == 'S')  pos.y += vel;
      if (key == 'a' || keyCode == 'A')  pos.x -= vel;
      if (key == 'd' || keyCode == 'D') pos.x += vel;
    }
    pos.x = constrain(pos.x, r, width - r);
    pos.y = constrain(pos.y, r, height - r);
  }

  public void draw() {
    noStroke();
    fill(50, 200, 255);
    circle(pos.x, pos.y, r*2);
  }

  Bala dispararHacia(PVector objetivo) {
    PVector dir = PVector.sub(objetivo, pos);
    if (dir.mag() == 0) dir = new PVector(1, 0);
    dir.normalize();
    return new Bala(pos.x, pos.y, dir);
  }
  public PVector getPosicion(){
    return pos;
    
  }
   
}
