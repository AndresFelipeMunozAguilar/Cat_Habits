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
            icon: Icon(Icons.bar_chart),
            color: Colors.white,
            iconSize: iconsSize,
            onPressed: () => {},
          ),
          IconButton(
            icon: Icon(Icons.calendar_month_outlined),
            color: Colors.white,
            iconSize: iconsSize,
            onPressed: () => {},
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(
                  color: Colors.white,
                  width: 2), // Borde blanco alrededor del ícono
            ),
            child: IconButton(
              icon: Icon(Icons.add),
              color: Colors.black,
              iconSize: iconsSize, // Tamaño mayor para el tercer ícono
              onPressed: () => {},
            ),
          ),
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            iconSize: iconsSize,
            onPressed: () => {},
          ),
          IconButton(
            icon: Icon(Icons.chat_bubble_outline),
            color: Colors.white,
            iconSize: iconsSize,
            onPressed: () => {},
          ),
        ],
      ),
    );
  }
}
