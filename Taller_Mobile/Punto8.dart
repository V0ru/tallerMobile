void main() {
  List<int> elementos = [1, 2, 3];
  List<List<int>> permutaciones = generarPermutaciones(elementos);
  print(permutaciones);
}

List<List<int>> generarPermutaciones(List<int> lista) {
  if (lista.length == 0) {
    return [[]];
  }
  List<List<int>> resultado = [];
  for (int i = 0; i < lista.length; i++) {
    int elemento = lista[i];
    List<int> sublista = List.from(lista)..removeAt(i);
    for (List<int> perm in generarPermutaciones(sublista)) {
      resultado.add([elemento, ...perm]);
    }
  }
  return resultado;
}
