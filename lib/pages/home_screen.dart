import 'package:cat_habits/Components/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final double horizMarginCarrousel = 25;
  final double spaceBetweenCarrousel = 15;

  @override
  Widget build(BuildContext context) {
    // Ocultar la barra de navegación
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cat Habits",
          style: GoogleFonts.manrope(color: Colors.white),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 25), // Espacio inicial

            // ListView con desplazamiento horizontal
            SizedBox(
              height: 230, // Altura del ListView
              child: ListView(
                scrollDirection: Axis.horizontal, // Scroll horizontal
                children: [
                  SizedBox(width: horizMarginCarrousel), // Separador inicial
                  Center(
                    child: Stack(
                      children: [
                        // Imagen
                        Container(
                          width: 300, // Ancho de la imagen
                          height: 200, // Altura de la imagen
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black
                                    .withOpacity(0.3), // Color de la sombra
                                blurRadius: 5, // Difuminación de la sombra
                                offset: const Offset(
                                    0, 10), // Desplazamiento hacia abajo
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                              image: AssetImage(
                                  'lib/Assets/Images/calendario_corrousel.png'), // Ruta de la imagen
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        // Texto superpuesto
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFF2F3220)
                                  .withOpacity(0.85), // Fondo gris con opacidad
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                            ),
                            padding:
                                const EdgeInsets.all(12), // Padding interno
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Título en negrita e itálica
                                Text(
                                  "Planificador",
                                  style: GoogleFonts.manrope(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(
                                    height: 4), // Espacio entre textos
                                // Subtítulo normal
                                Text(
                                  "¿Quieres agendar o revisar una tarea?\nEmpieza aquí",
                                  style: GoogleFonts.manrope(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                      width:
                          spaceBetweenCarrousel), // Separador entre elementos
                  Center(
                    child: Stack(
                      children: [
                        // Imagen
                        Container(
                          width: 300, // Ancho de la imagen
                          height: 200, // Altura de la imagen
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black
                                    .withOpacity(0.3), // Color de la sombra
                                blurRadius: 5, // Difuminación de la sombra
                                offset: const Offset(
                                    0, 10), // Desplazamiento hacia abajo
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                              image: AssetImage(
                                  'lib/Assets/Images/get_to_know_you.png'), // Ruta de la imagen
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        // Texto superpuesto
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFF2F3220)
                                  .withOpacity(0.85), // Fondo gris con opacidad
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                            ),
                            padding:
                                const EdgeInsets.all(12), // Padding interno
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Título en negrita e itálica
                                Text(
                                  "Get to Know You",
                                  style: GoogleFonts.manrope(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(
                                    height: 4), // Espacio entre textos
                                // Subtítulo normal
                                Text(
                                  "¡Habla con la IA para conocer tus\nhábitos de estudio!",
                                  style: GoogleFonts.manrope(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                      width:
                          spaceBetweenCarrousel), // Separador entre elementos
                  Center(
                    child: Stack(
                      children: [
                        // Imagen
                        Container(
                          width: 300, // Ancho de la imagen
                          height: 200, // Altura de la imagen
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black
                                    .withOpacity(0.3), // Color de la sombra
                                blurRadius: 5, // Difuminación de la sombra
                                offset: const Offset(
                                    0, 10), // Desplazamiento hacia abajo
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                              image: AssetImage(
                                  'lib/Assets/Images/estadisticas_corrousel.png'), // Ruta de la imagen
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        // Texto superpuesto
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFF2F3220)
                                  .withOpacity(0.85), // Fondo gris con opacidad
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                            ),
                            padding:
                                const EdgeInsets.all(12), // Padding interno
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Título en negrita e itálica
                                Text(
                                  "Estadísticas",
                                  style: GoogleFonts.manrope(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(
                                    height: 4), // Espacio entre textos
                                // Subtítulo normal
                                Text(
                                  "¿Deseas aprender sobre tus hábitos?\nMira que tanto cumples con tus tareas.",
                                  style: GoogleFonts.manrope(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: horizMarginCarrousel)
                ],
              ),
            ),

            const Expanded(
              child: SizedBox(height: 20),
            ), // Espacio entre ListView y cuadrado final

            Container(
              width: 315, // Ancho deseado
              child: AspectRatio(
                aspectRatio: 3 / 4, // Proporciones de la imagen
                child: Image.asset(
                  'lib/Assets/Images/background_tasks.png', // Ruta de la imagen
                  fit: BoxFit.contain, // Ajuste de la imagen
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Footer(),
    );
  }
}
