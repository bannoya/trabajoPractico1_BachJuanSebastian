class Enemigo extends GameObject {
  private float r = 14;

  private Enemigo(float x, float y) { super(x, y, 1.5); }

  public void update(PVector posJugador) {
     Utilidad.movimientoEnemigo(this.pos, posJugador, this.vel,3);
    
  }

  public void draw() {
    noStroke();
    fill(255, 80, 80);
    circle(pos.x, pos.y, r*2);
  }
}
