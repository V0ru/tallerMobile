void main() {
  String usuarioAlmacenado = "estudiante";
  String contrasenaAlmacenada = "1234";

  String usuarioIngresado = "estudiante"; 
  String contrasenaIngresada = "1234";    

  if (autenticar(usuarioIngresado, contrasenaIngresada, usuarioAlmacenado, contrasenaAlmacenada)) {
    print("¡Autenticación exitosa!");
  } else {
    print("Nombre de usuario o contraseña incorrectos.");
  }
}

bool autenticar(String usuarioIngresado, String contrasenaIngresada, String usuarioAlmacenado, String contrasenaAlmacenada) {
  if (usuarioIngresado == usuarioAlmacenado && contrasenaIngresada == contrasenaAlmacenada) {
    return true;
  }
  return false;
}
