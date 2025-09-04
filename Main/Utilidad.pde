static class Utilidad {

  Utilidad() {
  }

  public static void movimientoEnemigo(PVector posInicial, PVector posFinal, float velocidad, float distanciaMinima) {
    float distanciaX = posFinal.x - posInicial.x;
    float distanciaY = posFinal.y - posInicial.y;
    float distancia = sqrt(distanciaX * distanciaX + distanciaY * distanciaY);

    if (distancia > distanciaMinima) {
      float movX = distanciaX  / distancia * velocidad * 1;
      float movY = distanciaY / distancia * velocidad * 1 ;
      posInicial.x += movX;
      posInicial.y += movY;
    }
  }}errrorrrr
