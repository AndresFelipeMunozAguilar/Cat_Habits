import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  //está en pixeles
  final double iconsSize = 40;

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
              border: Border.all(
                  color: Colors.white,
                  width: 2), // Borde blanco alrededor del ícono
            ),
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: iconsSize * 2, // Tamaño mayor para el tercer ícono
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
