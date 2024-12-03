import 'package:cat_habits/pages/home_screen.dart';
import 'package:cat_habits/pages/session/login.dart';
import 'package:cat_habits/pages/session/signup.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  // Se utiliza  para garantizar que el entorno
  // de Flutter esté cargado antes de interactuar
  //con cualquier widget o realizar tareas asíncronas.
  WidgetsFlutterBinding.ensureInitialized();


  runApp(MyApp());
}

const bool aux = true;

//Esta es la animación que hace ver como si la siguiente página
//entrara desde la derecha hacia la  izquierda al teléfono hasta
//detenerse en el centro
CustomTransitionPage _customPageTransition(Widget child, GoRouterState state) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0); // Desliza desde la derecha
      const end = Offset.zero; // Llega a la posición final
      const curve = Curves.easeInOut;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter _router = GoRouter(
    initialLocation: '/login',
    routes: <GoRoute>[
      GoRoute(
        path: "/",
        pageBuilder: (context, state) => _customPageTransition(
          const HomeScreen(),
          state,
        ),
      ),
      GoRoute(
        path: "/login",
        pageBuilder: (context, state) => _customPageTransition(
          Login(),
          state,
        ),
      ),
      GoRoute(
        path: "/signup",
        pageBuilder: (context, state) => _customPageTransition(
          Signup(),
          state,
        ),
      ),
    ],
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Cat Habits',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   // This is the theme of your application.
      //   //
      //   // TRY THIS: Try running your application with "flutter run". You'll see
      //   // the application has a purple toolbar. Then, without quitting the app,
      //   // try changing the seedColor in the colorScheme below to Colors.green
      //   // and then invoke "hot reload" (save your changes or press the "hot
      //   // reload" button in a Flutter-supported IDE, or press "r" if you used
      //   // the command line to start the app).
      //   //
      //   // Notice that the counter didn't reset back to zero; the application
      //   // state is not lost during the reload. To reset the state, use hot
      //   // restart instead.
      //   //
      //   // This works for code too, not just values: Most code changes can be
      //   // tested with just a hot reload.
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),

      routerConfig: _router,
    );
  }
}
