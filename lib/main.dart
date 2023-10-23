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
          colorScheme: ColorScheme(
              brightness: Brightness.light,
              primary: Colors.yellow.shade800,
              onPrimary: Colors.black,
              secondary: Colors.grey.shade200,
              onSecondary: Colors.black,
              error: Colors.red.shade300,
              onError: Colors.black,
              background: Colors.white,
              onBackground: Colors.black,
              surface: Colors.white,
              onSurface: Colors.black),
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              titleTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20),
              foregroundColor: Colors.black),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow.shade700)),
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
                  borderRadius: BorderRadius.circular(16)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16))),
          listTileTheme: const ListTileThemeData(
            titleTextStyle: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
            subtitleTextStyle: TextStyle(
              fontSize: 14,
            ),
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: Colors.yellow.shade800,
              foregroundColor: Colors.white,
              enableFeedback: true)),
      darkTheme: ThemeData(
          colorScheme: ColorScheme(
              brightness: Brightness.light,
              primary: Colors.yellow.shade800,
              onPrimary: Colors.white,
              secondary: Colors.grey.shade900,
              onSecondary: Colors.white,
              error: Colors.red.shade300,
              onError: Colors.black,
              background: Colors.white,
              onBackground: Colors.black,
              surface: Colors.white,
              onSurface: Colors.black),
          textTheme: Typography.whiteCupertino,
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              titleTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20),
              foregroundColor: Colors.white),
          canvasColor: Colors.black,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow.shade700)),
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
              collapsedTextColor: Colors.white,
              collapsedIconColor: Colors.white,
              backgroundColor: Colors.grey.shade900,
              collapsedBackgroundColor: Colors.transparent,
              expandedAlignment: Alignment.topLeft,
              collapsedShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16))),
          listTileTheme: const ListTileThemeData(
            iconColor: Colors.white,
            titleTextStyle: TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
            subtitleTextStyle: TextStyle(
              fontSize: 14,
            ),
          ),
          iconButtonTheme: IconButtonThemeData(
              style: IconButton.styleFrom(backgroundColor: Colors.white)),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: Colors.yellow.shade800,
              foregroundColor: Colors.white,
              enableFeedback: true)),
      home: const HomePage(),
    );
  }
}
