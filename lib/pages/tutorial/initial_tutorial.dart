import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class InitialTutorial extends StatelessWidget {
  const InitialTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    // Ocultar la barra de navegación
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    const double separacionDeCards = 15;
    const double horizontalPadding = 45;
    const double cardHeight = 500;
    const double cardWidth = 300;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 166, 181, 255),
      body: Center(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            const SizedBox(width: horizontalPadding),

            // Primera card
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: cardWidth,
                    height: cardHeight,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFDF4),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Expanded(
                                child: Center(
                                  child: Text(
                                    "Primeros pasos",
                                    style: TextStyle(
                                      fontFamily: 'Montserratsemibold',
                                      fontSize: 24,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              Image.asset(
                                'lib/Assets/Images/emoji.png', // Imagen emojis
                                height: 45, // Altura
                                width: 65, // Ancho
                              ),
                            ],
                          ),

                          const Text(
                            "¡Bienvenido a CatHabits!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Montserratregular',
                              fontSize: 20,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 13),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0.0, vertical: 0.0),
                            child: const Text(
                              "Cat Habits es una app para que te organices como estudiante, crees                  hábitos y aprendas más sobre ti          mismo.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Montserratlight',
                                fontSize: 14,
                                height: 1.2,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          const SizedBox(height: 24),
                          Image.asset(
                            'lib/Assets/Images/Calendario.png', // Imagen calendario
                            height: 150, // Altura
                            width: 150, // Ancho
                          ),
                          const SizedBox(
                              height:
                                  35), // Espacio entre el icono y la descrip
                          const Text(
                            "¡Usar el Planificador para ver y        agendar tus clases, crear                     eventos y actividades!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Montserratmedium',
                              fontSize: 14,
                              height: 1.1,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 25),
                          Image.asset(
                            'lib/Assets/Images/dots1.png', // Puntos de deslizamiento
                            height: 35, // Altura
                            width: 35, // Ancho
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
            const SizedBox(width: separacionDeCards),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: cardWidth,
                    height: cardHeight,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFDF4),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Expanded(
                                child: Center(
                                  child: Text(
                                    "Primeros pasos",
                                    style: TextStyle(
                                      fontFamily: 'Montserratsemibold',
                                      fontSize: 24,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              Image.asset(
                                'lib/Assets/Images/emoji.png', // Imagen emojis
                                height: 45, // Altura
                                width: 65, // Ancho
                              ),
                            ],
                          ),
                          const Text(
                            "¡Bienvenido a CatHabits!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Montserratregular',
                              fontSize: 20,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 13),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0.0, vertical: 0.0),
                            child: const Text(
                              "Cat Habits es una app para que te organices como estudiante, crees                  hábitos y aprendas más sobre ti          mismo.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Montserratlight',
                                fontSize: 14,
                                height: 1.2,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          const SizedBox(height: 24),
                          Image.asset(
                            'lib/Assets/Images/habitos.png', // Ábaco habitos
                            height: 150, // Altura
                            width: 150, // Ancho
                          ),
                          const SizedBox(
                              height:
                                  35), // Espacio entre el icono y la descrip
                          const Text(
                            "¡Habla con la IA para aprender               sobre tí y generar estrategias                   para tus hábitos de aprendizaje!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Montserratmedium',
                              fontSize: 14,
                              height: 1.1,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 25),
                          Center(
                            child: Image.asset(
                              'lib/Assets/Images/dots2.png', // Puntos deslizamiento
                              height: 35, // Altura
                              width: 35, // Ancho
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
            const SizedBox(width: separacionDeCards),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: cardWidth,
                    height: cardHeight,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFDF4),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Expanded(
                                    child: Center(
                                      child: Text(
                                        "Primeros pasos",
                                        style: TextStyle(
                                          fontFamily: 'Montserratsemibold',
                                          fontSize: 24,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Image.asset(
                                    'lib/Assets/Images/emoji.png', // Imagen emojis
                                    height: 45, // Altura
                                    width: 65, // Ancho
                                  ),
                                ],
                              ),
                              const Text(
                                "¡Bienvenido a CatHabits!",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Montserratregular',
                                  fontSize: 20,
                                  color: Colors.black87,
                                ),
                              ),
                              const SizedBox(height: 13),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 0.0, vertical: 0.0),
                                child: const Text(
                                  "Cat Habits es una app para que te organices como estudiante, crees                  hábitos y aprendas más sobre ti          mismo.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Montserratlight',
                                    fontSize: 14,
                                    height: 1.2,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 24),
                              Image.asset(
                                'lib/Assets/Images/statss.png', // img Estadísticas
                                height: 120, // Altura
                                width: 120, // Ancho
                              ),
                              const SizedBox(
                                  height:
                                      16), // Espacio entre el icono y la descrip
                              const Text(
                                "¡Visualiza tus estadísticas y                aprende más sobre como                   estudias!",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Montserratmedium',
                                  fontSize: 14,
                                  height: 1.2,
                                  color: Colors.black87,
                                ),
                              ),

                              const SizedBox(height: 18),
                              ElevatedButton(
                                onPressed: () {
                                  // Acción al presionar el botón
                                  context.go('/signup');
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(
                                      255, 0, 4, 197), // Fondo azul
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        30), // Borde redondeado
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24, vertical: 20),
                                  elevation: 5, // Sombra
                                ),
                                child: const Text(
                                  'Crear cuenta y empezar',
                                  style: TextStyle(
                                    fontFamily: 'Montserratsemibold',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white, // Texto blanco
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Image.asset(
                                'lib/Assets/Images/dots3.png', // img puntos deslizamiento
                                height: 35, // Altura
                                width: 35, // Ancho
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
            const SizedBox(width: horizontalPadding),
          ],
        ),
      ),
    );
  }
}