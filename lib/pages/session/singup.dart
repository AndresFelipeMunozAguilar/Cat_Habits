import 'package:cat_habits/Enviroment_vars/sessions.dart';
import 'package:cat_habits/Enviroment_vars/styles.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatelessWidget {
  Signup({super.key});

  final StylesData _estilos = StylesData();
  final SessionsData _sesiones = SessionsData();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _userController = TextEditingController();


 
  @override
  Widget build(BuildContext context) {
    // Ocultar la barra de navegación
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    return Scaffold(
      body: Container(
        color: const Color(0xFFE0E28E), // Color de fondo para toda la pantalla
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 72),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40), // Espaciado inicial ajustado
                Image.asset(
                  'lib/Assets/Images/Logo_session.png',
                  height: 200,
                ),
                const SizedBox(height: 24), // Espaciado entre elementos

                // Texto de iniciar sesión
                Text(
                  "Crear cuenta",
                  style: GoogleFonts.manrope(
                    fontSize: 30,
                    fontWeight: FontWeight.normal,
                    color: _estilos.colorText,
                  ),
                ),
                const SizedBox(height: 1), // Espaciado entre elementos

                // Línea negra larga
                Divider(
                  color: _estilos.colorText,
                  thickness: 1.0,
                ),
                const SizedBox(height: 16), // Espaciado entre elementos

                // Input para usuario
                TextField(
                  controller: _userController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.account_circle, color: Colors.black),
                    hintText: "Usuario",
                    hintStyle: GoogleFonts.manrope(
                        textStyle: TextStyle(
                            color: _estilos.colorHintText,
                            fontSize: 20,
                            fontWeight: FontWeight.normal)),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 16), // Espaciado entre elementos

                // Input para correo
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email, color: Colors.black),
                    hintText: "Correo",
                    hintStyle: GoogleFonts.manrope(
                        textStyle: TextStyle(
                            color: _estilos.colorHintText,
                            fontSize: 20,
                            fontWeight: FontWeight.normal)),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 16), //Espaciado entre elemmentos

                // Input para contraseña
                TextField(
                  controller: _passwordController,
                  obscureText: true, // Oculta la contraseña
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.key, color: Colors.black),
                    hintText: "Contraseña",
                    hintStyle: GoogleFonts.manrope(
                        textStyle: TextStyle(
                            color: _estilos.colorHintText,
                            fontSize: 20,
                            fontWeight: FontWeight.normal)),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 32), // Espaciado vertical

                // Botón de crear
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      _signup(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFFFDEF),
                      shadowColor: Colors.grey,
                      elevation: 5,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60.0),
                      ),
                    ),
                    child: const Text(
                      "Crear",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 90),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Imagen a la izquierda
                    Image.asset(
                      'lib/Assets/Images/image_crear_cuenta.png', // Reemplaza con tu ruta de imagen
                      width: 120, // Ajusta el tamaño según sea necesario
                      height: 120,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(
                        width:
                            16), // Espaciado entre la imagen y los elementos de la derecha

                    // Elementos apilados verticalmente a la derecha
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Globo de texto
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 8),
                          decoration: const BoxDecoration(
                            color:
                                Color(0xFFFF1D70), // Color del globo de texto
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(45.0),
                              topRight: Radius.circular(45.0),
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(45.0),
                            ),
                          ),
                          child: Text(
                            "¿Ya tienes una cuenta?", // Cambia este texto según sea necesario
                            style: GoogleFonts.manrope(
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                            height:
                                8), // Espaciado entre el globo de texto y el botón

                        // Botón ElevatedButton
                        ElevatedButton(
                          onPressed: () {
                            context.go('/login');
                            // ¿No tienes cuenta? VE Y CREA UNA
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFFFFDEF),
                            shadowColor: Colors.grey,
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(139),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(6, 4, 6, 4),
                            child: Text(
                              "Ingresa\naquí",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.manrope(
                                textStyle: const TextStyle(
                                  fontSize: 22,
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Función de inicio de sesión
  void _signup(BuildContext context) {
    // Obtener los valores del texto ingresado
    String email = _emailController.text;
    String password = _passwordController.text;

    // Verificar si las credenciales son correctas
    if (email == _sesiones.mailTestAccount &&
        password == _sesiones.passwordTestAccount) {
      // Redirigir a la página principal si las credenciales son correctas
      context.go('/');
    } else {
      // Mostrar un modal de alerta si las credenciales son incorrectas
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: const Color(0xFFFFEA91),
            title: Text(
              'Credenciales Incorrectas',
              style: GoogleFonts.manrope(
                color: const Color.fromARGB(255, 119, 30, 8),
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            content: Text(
              'Verifique el correo y la contraseña',
              style: GoogleFonts.manrope(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 22,
              ),
            ),
            actions: <Widget>[
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white, // Color de fondo grisáceo
                  elevation: 5, // Elevación para dar efecto de sombra
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shadowColor: Colors.grey,
                ),
                onPressed: () {
                  Navigator.of(context).pop(); // Cerrar el modal
                },
                child: Text(
                  'Cerrar',
                  style: GoogleFonts.manrope(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          );
        },
      );
    }
  }
}
