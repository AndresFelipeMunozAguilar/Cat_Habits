import 'package:cat_habits/Enviroment_vars/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final StylesData _estilos = StylesData();

  @override
  Widget build(BuildContext context) {
    // Ocultar la barra de navegación
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    return Scaffold(
      body: Container(
        color: Color(0xFFFFEA91), // Background color
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Lugar para una imagen
            Placeholder(
              fallbackHeight: 100,
              fallbackWidth: 100,
            ),
            SizedBox(height: 24), // Espaciado entre elementos

            // Texto de iniciar sesión
            Text(
              "Iniciar Sesión",
              style: GoogleFonts.manrope(
                fontSize: 24,
                fontWeight: FontWeight.normal,
                color: _estilos.colorText,
              ),
            ),
            SizedBox(height: 1), // Espaciado entre elementos

            // Línea negra larga
            Divider(
              color: _estilos.colorText,
              thickness: 1.0,
            ),
            SizedBox(height: 16), // Espaciado entre elementos

            // Input para correo
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email, color: Colors.black),
                hintText: "Correo",
                hintStyle: TextStyle(color: Colors.black54),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 16), // Espaciado entre elementos

            // Input para contraseña
            TextField(
              obscureText: true, // Oculta la contraseña
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock, color: Colors.black),
                hintText: "Contraseña",
                hintStyle: TextStyle(color: Colors.black54),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 32), // Espaciado vertical

            // Botón de ingresar
            ElevatedButton(
              onPressed: () {
                // Acción del botón
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shadowColor: Colors.grey,
                elevation: 5,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Text(
                "Ingresar",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
