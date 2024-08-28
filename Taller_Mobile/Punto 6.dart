void main() {
  List<int> numeros = [1, 2, 2, 3, 4, 4, 5, 1];
  List<int> sinDuplicados = eliminarDuplicados(numeros);
  print(sinDuplicados);
}

List<int> eliminarDuplicados(List<int> lista) {
  List<int> nuevaLista = [];
  for (int numero in lista) {
    if (!nuevaLista.contains(numero)) {
      nuevaLista.add(numero);
    }
  }
  return nuevaLista;
}
