void main() {
  List<int> numeros = [1, 2, 3, 4, 5];

  if (estaOrdenadaAsc(numeros)) {
    print("La lista está ordenada de forma ascendente.");
  } else if (estaOrdenadaDesc(numeros)) {
    print("La lista está ordenada de forma descendente.");
  } else {
    print("La lista no está ordenada.");
  }
}

bool estaOrdenadaAsc(List<int> lista) {
  for (int i = 0; i < lista.length - 1; i++) {
    if (lista[i] > lista[i + 1]) {
      return false;
    }
  }
  return true;
}

bool estaOrdenadaDesc(List<int> lista) {
  for (int i = 0; i < lista.length - 1; i++) {
    if (lista[i] < lista[i + 1]) {
      return false;
    }
  }
  return true;
}
