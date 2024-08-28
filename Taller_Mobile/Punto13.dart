void main() {
  Map<String, int> diccionario1 = {'a': 2, 'b': 3, 'c': 5};
  Map<String, int> diccionario2 = {'b': 4, 'c': 1, 'd': 7};

  Map<String, int> combinado = combinarDiccionarios(diccionario1, diccionario2);
  print(combinado);
}

Map<String, int> combinarDiccionarios(
    Map<String, int> dic1, Map<String, int> dic2) {
  Map<String, int> resultado = {};

  dic1.forEach((clave, valor) {
    resultado[clave] = valor;
  });

  dic2.forEach((clave, valor) {
    if (resultado.containsKey(clave)) {
      resultado[clave] = resultado[clave]! + valor;
    } else {
      resultado[clave] = valor;
    }
  });

  return resultado;
}
