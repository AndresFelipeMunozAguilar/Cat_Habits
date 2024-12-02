import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    // Ocultar la barra de navegación
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    return const Text("Hola, soy signup");
  }
}
