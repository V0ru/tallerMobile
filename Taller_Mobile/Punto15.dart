void main() {
  List<Map<String, dynamic>> estudiantes = [
    {
      'nombre': 'Ana',
      'calificaciones': [90, 80, 85]
    },
    {
      'nombre': 'Luis',
      'calificaciones': [70, 75, 80]
    },
    {
      'nombre': 'Maria',
      'calificaciones': [85, 95, 90]
    },
  ];

  Map<String, double> promedios = calcularPromedios(estudiantes);
  print(promedios);
}

Map<String, double> calcularPromedios(
    List<Map<String, dynamic>> listaEstudiantes) {
  Map<String, double> promedios = {};

  for (var estudiante in listaEstudiantes) {
    String nombre = estudiante['nombre'];
    List<int> calificaciones = estudiante['calificaciones'];
    double promedio =
        calificaciones.reduce((a, b) => a + b) / calificaciones.length;

    promedios[nombre] = promedio;
  }

  return promedios;
}
