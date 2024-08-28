void main() {
  List<int> numeros = [1, 2, 2, 3, 4, 4, 5, 1];
  Set<int> duplicados = encontrarDuplicados(numeros);
  print(duplicados); 
}

Set<int> encontrarDuplicados(List<int> lista) {
  Set<int> elementosUnicos = {};
  Set<int> elementosDuplicados = {};
  for (int numero in lista) {
    if (elementosUnicos.contains(numero)) {
      elementosDuplicados.add(numero);
    } else {
      elementosUnicos.add(numero);
    }
  }
  return elementosDuplicados;
}
