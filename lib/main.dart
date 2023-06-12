import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
              foregroundColor: Colors.black),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow.shade700,
                  padding: const EdgeInsets.all(24))),
          outlinedButtonTheme: OutlinedButtonThemeData(
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  foregroundColor: Colors.yellow.shade800,
                  side: BorderSide(color: Colors.yellow.shade800, width: 2),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero),
                  padding: const EdgeInsets.symmetric(
                      vertical: 24, horizontal: 32))),
          expansionTileTheme: ExpansionTileThemeData(
            childrenPadding: const EdgeInsets.all(16),
            iconColor: Colors.yellow.shade800,
            textColor: Colors.yellow.shade800,
            collapsedTextColor: Colors.black,
            collapsedIconColor: Colors.black,
            backgroundColor: Colors.grey.shade200,
            collapsedBackgroundColor: Colors.transparent,
            expandedAlignment: Alignment.topLeft,
            collapsedShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            )
          ),
          listTileTheme: ListTileThemeData(
            titleTextStyle: GoogleFonts.inconsolata(
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
            subtitleTextStyle: const TextStyle(
              fontSize: 14,
            ),
          )
          ),
      home: const HomePage(),
    );
  }
}
