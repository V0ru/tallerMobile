void main() {
  List<int> lista1 = [1, 3, 5];
  List<int> lista2 = [2, 4, 6];
  List<int> listaMezclada = mezclarListas(lista1, lista2);
  print(listaMezclada); 
}

List<int> mezclarListas(List<int> lista1, List<int> lista2) {
  List<int> listaMezclada = [];
  for (int i = 0; i < lista1.length; i++) {
    listaMezclada.add(lista1[i]);
    listaMezclada.add(lista2[i]);
  }
  return listaMezclada;
}
