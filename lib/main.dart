import 'package:flutter/material.dart';
import 'package:flutter_carlos/book.dart';
import 'package:flutter_carlos/inicio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu Pequeno Grimório APP',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 0, 0, 255),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => telaInicio(),
        '/livrocatalogo': (context) => MyBook(),
      },
    );
  }
}
