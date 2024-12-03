import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cathabits',
      home: Scaffold(
        backgroundColor:
            Color.fromARGB(255, 166, 181, 255), // Color lila azulito del fondo
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  children: [
                    // Primera tarjeta
                    Column(
                      mainAxisAlignment:
                          MainAxisAlignment.center, // Centrar el contenido
                      children: [
                        SizedBox(height: 60),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 25, // Margen izquierdo y derecho
                            vertical: 40, // Margen superior e inferior
                          ),
                          padding: EdgeInsets.all(15),
                          constraints: BoxConstraints(minHeight: 517),
                          decoration: BoxDecoration(
                            color: Colors.white, // Fondo blanco
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "   Primeros pasos  ",
                                    style: TextStyle(
                                      fontFamily: 'Montserratsemibold',
                                      fontSize: 24,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Image.asset(
                                    'assets/images/emoji.png', // Imagen emojis
                                    height: 45, // Altura
                                    width: 65, // Ancho
                                  ),
                                ],
                              ),
                              Text(
                                "¡Bienvenido a CatHabits!",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Montserratregular',
                                  fontSize: 20,
                                  color: Colors.black87,
                                ),
                              ),
                              SizedBox(height: 13),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0.0, vertical: 0.0),
                                child: Text(
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
                              SizedBox(height: 24),
                              Image.asset(
                                'assets/images/Calendario.png', // Imagen calendario
                                height: 150, // Altura
                                width: 150, // Ancho
                              ),
                              SizedBox(
                                  height:
                                      35), // Espacio entre el icono y la descrip
                              Text(
                                "¡Usar el Planificador para ver y        agendar tus clases, crear                     eventos y actividades!",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Montserratmedium',
                                  fontSize: 14,
                                  height: 1.1,
                                  color: Colors.black87,
                                ),
                              ),
                              SizedBox(height: 25),
                              Image.asset(
                                'assets/images/dots1.png', // Puntos de deslizamiento
                                height: 35, // Altura
                                width: 35, // Ancho
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // Segunda tarjeta
                    Column(
                      mainAxisAlignment:
                          MainAxisAlignment.center, // Centrar el contenido
                      children: [
                        SizedBox(height: 60),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 25, // Margen izquierdo y derecho
                            vertical: 40, // Margen superior e inferior
                          ),
                          padding: EdgeInsets.all(15),
                          constraints: BoxConstraints(minHeight: 517),
                          decoration: BoxDecoration(
                            color: Colors.white, // Fondo blanco
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "   Primeros pasos  ",
                                    style: TextStyle(
                                      fontFamily: 'Montserratsemibold',
                                      fontSize: 24,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Image.asset(
                                    'assets/images/emoji.png', // Emojis
                                    height: 45, // Altura
                                    width: 65, // Ancho
                                  ),
                                ],
                              ),
                              Text(
                                "¡Bienvenido a CatHabits!",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Montserratregular',
                                  fontSize: 20,
                                  color: Colors.black87,
                                ),
                              ),
                              SizedBox(height: 13),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0.0, vertical: 0.0),
                                child: Text(
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
                              SizedBox(height: 24),
                              Image.asset(
                                'assets/images/habitos.png', // Ábaco habitos
                                height: 150, // Altura
                                width: 150, // Ancho
                              ),
                              SizedBox(
                                  height:
                                      35), // Espacio entre el icono y la descrip
                              Text(
                                "¡Habla con la IA para aprender               sobre tí y generar estrategias                   para tus hábitos de aprendizaje!",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Montserratmedium',
                                  fontSize: 14,
                                  height: 1.1,
                                  color: Colors.black87,
                                ),
                              ),
                              SizedBox(height: 25),
                              Image.asset(
                                'assets/images/dots2.png', // Puntos deslizamiento
                                height: 35, // Altura
                                width: 35, // Ancho
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // Tercera tarjeta
                    Column(
                      mainAxisAlignment:
                          MainAxisAlignment.center, // Centrar el contenido
                      children: [
                        SizedBox(height: 60),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 25, // Margen izquierdo y derecho
                            vertical: 40, // Margen superior e inferior
                          ),
                          padding: EdgeInsets.all(15),
                          constraints: BoxConstraints(minHeight: 510),
                          decoration: BoxDecoration(
                            color: Colors.white, // Fondo blanco
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "   Primeros pasos  ",
                                    style: TextStyle(
                                      fontFamily: 'Montserratsemibold',
                                      fontSize: 24,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Image.asset(
                                    'assets/images/emoji.png', // Emojis
                                    height: 45, // Altura
                                    width: 65, // Ancho
                                  ),
                                ],
                              ),
                              Text(
                                "¡Bienvenido a CatHabits!",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Montserratregular',
                                  fontSize: 20,
                                  color: Colors.black87,
                                ),
                              ),
                              SizedBox(height: 13),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0.0, vertical: 0.0),
                                child: Text(
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
                              SizedBox(height: 24),
                              Image.asset(
                                'assets/images/statss.png', // img Estadísticas
                                height: 120, // Altura
                                width: 120, // Ancho
                              ),
                              SizedBox(
                                  height:
                                      16), // Espacio entre el icono y la descrip
                              Text(
                                "¡Visualiza tus estadísticas y                aprende más sobre como                   estudias!",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Montserratmedium',
                                  fontSize: 14,
                                  height: 1.2,
                                  color: Colors.black87,
                                ),
                              ),

                              SizedBox(height: 18),
                              ElevatedButton(
                                onPressed: () {
                                  // Acción al presionar el botón
                                  print('Botón presionado');
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(
                                      255, 0, 4, 197), // Fondo azul
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        30), // Borde redondeado
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 24, vertical: 20),
                                  elevation: 5, // Sombra
                                ),
                                child: Text(
                                  'Crear cuenta y empezar',
                                  style: TextStyle(
                                    fontFamily: 'Montserratsemibold',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white, // Texto blanco
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Image.asset(
                                'assets/images/dots3.png', // img puntos deslizamiento
                                height: 35, // Altura
                                width: 35, // Ancho
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  // Acción para omitir
                },
                child: Text(
                  "Omitir",
                  style: TextStyle(
                      fontFamily: 'Montserratsemibold',
                      fontSize: 24,
                      decoration: TextDecoration.underline,
                      color: const Color.fromARGB(255, 76, 84, 177)),
                ),
              ),
              SizedBox(height: 90),
            ],
          ),
        ),
      ),
    );
  }
}
