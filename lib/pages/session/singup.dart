import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Singup extends StatelessWidget {
  const Singup({super.key});

  @override
  Widget build(BuildContext context) {
    // Ocultar la barra de navegación
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    return const Text("Hola, soy signup");
  }
}
