void main() {
  String texto = "Hola mundo";
  Map<String, int> frecuencia = contarFrecuenciaCaracteres(texto);
  print(frecuencia); 
}

Map<String, int> contarFrecuenciaCaracteres(String texto) {
  Map<String, int> frecuencia = {};
  
  for (int i = 0; i < texto.length; i++) {
    String caracter = texto[i];
    if (caracter != ' ') {
      if (frecuencia.containsKey(caracter)) {
        frecuencia[caracter] = frecuencia[caracter]! + 1;
      } else {
        frecuencia[caracter] = 1;
      }
    }
  }

  return frecuencia;
}
