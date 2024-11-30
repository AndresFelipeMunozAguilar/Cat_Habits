import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  //está en pixeles
  final double iconsSize = 33;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black, // Fondo negro
      height: 60.0, // Altura del footer
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceEvenly, // Espaciado igual entre íconos
        children: [
          IconButton(
            icon: const Icon(Icons.bar_chart),
            color: Colors.white,
            iconSize: iconsSize,
            onPressed: () => {},
          ),
          IconButton(
            icon: const Icon(Icons.calendar_month_outlined),
            color: Colors.white,
            iconSize: iconsSize,
            onPressed: () => {},
          ),
          Transform.translate(
              offset: const Offset(0, -10),
              child: Transform.scale(
                  scale: 1.5,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(
                          color: Colors.black,
                          width: 2), // Borde blanco alrededor del ícono
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.add),
                      color: Colors.black,
                      iconSize: iconsSize, // Tamaño mayor para el tercer ícono
                      onPressed: () => {},
                    ),
                  ))),
          IconButton(
            icon: const Icon(Icons.search),
            color: Colors.white,
            iconSize: iconsSize,
            onPressed: () => {},
          ),
          IconButton(
            icon: const Icon(Icons.chat_bubble_outline),
            color: Colors.white,
            iconSize: iconsSize,
            onPressed: () => {},
          ),
        ],
      ),
    );
  }
}
