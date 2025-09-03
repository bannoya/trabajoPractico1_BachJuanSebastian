private Jugador jugador;
private ArrayList<Bala> balas = new ArrayList<Bala>();
private Enemigo enemigo;

public void setup() {
  size(800, 600);
  jugador = new Jugador(width/2, height/2);
  enemigo = new Enemigo(100, 100);
}

public void draw() {
  background(20);

  jugador.update();
  for (Bala b : balas) b.update();
  enemigo.update(jugador.getPosicion());

  jugador.draw();
  for (Bala b : balas) b.draw();
  enemigo.draw();
}

public void mousePressed() {
  balas.add(jugador.dispararHacia(new PVector(mouseX, mouseY)));
}
