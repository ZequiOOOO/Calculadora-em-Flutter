import 'package:flutter/material.dart';
import 'package:primeira_aplicacao_flutter/pages/myHomePage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
     
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(192, 18, 157, 250)),
        useMaterial3: true,
      
      ),
      home: const MyHomePage(title: 'Calculadora'),
    );
  }
}