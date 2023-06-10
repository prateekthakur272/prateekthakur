import 'package:flutter/material.dart';
import 'package:prateekthakur/pages/homepage.dart';

void main(List<String> args) {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prateek Thakur',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          foregroundColor: Colors.black
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.yellow.shade700,
            padding: const EdgeInsets.all(24)
          )
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.yellow.shade800,
            side: BorderSide(color: Colors.yellow.shade800,width: 2),
            padding: const EdgeInsets.all(24)
          )
        )
      ),
      home: const HomePage(),
    );
  }
}