import 'package:cat_habits/Components/footer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cat Habits",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(
          0xFF596A13,
        ),
        actions: [
          IconButton(
            icon: const Icon(
                Icons.settings_outlined), // Ícono de ajustes de Material Design
            color: Colors.white,
            iconSize: 33,
            onPressed: () {
              // Acción cuando se presiona el ícono
              print('Ajustes presionado');
            },
          ),
        ],
      ),
      body: const Text("me pican los cocos"),
      bottomNavigationBar: const Footer(),
    );
  }
}
