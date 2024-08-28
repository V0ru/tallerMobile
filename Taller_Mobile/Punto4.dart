import 'dart:io'; // Para leer la entrada del usuario
import 'dart:math'; // Para generar elecciones aleatorias

void main() {
  List<String> opciones = ['Piedra', 'Papel', 'Tijera'];
  Random random = new Random();

  String eleccionPrograma = opciones[random.nextInt(3)];

  print('Elige: Piedra, Papel o Tijera');
  String eleccionUsuario = stdin.readLineSync() ?? '';

  eleccionUsuario = eleccionUsuario[0].toUpperCase() + eleccionUsuario.substring(1).toLowerCase();

  if (opciones.contains(eleccionUsuario)) {
    print('El programa eligió: $eleccionPrograma');
    if (eleccionUsuario == eleccionPrograma) {
      print('¡Es un empate!');
    } else if ((eleccionUsuario == 'Piedra' && eleccionPrograma == 'Tijera') ||
               (eleccionUsuario == 'Papel' && eleccionPrograma == 'Piedra') ||
               (eleccionUsuario == 'Tijera' && eleccionPrograma == 'Papel')) {
      print('¡Ganaste!');
    } else {
      print('El programa gana.');
    }
  } else {
    print('Elección inválida. Por favor elige entre Piedra, Papel o Tijera.');
  }
}
