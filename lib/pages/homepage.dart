import 'package:flutter/material.dart';
import 'package:prateekthakur/widgets/about.dart';
import 'package:prateekthakur/widgets/intro.dart';
import 'package:prateekthakur/widgets/side_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Prateek Thakur',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Center(
        child: Row(
          children: [
            if (MediaQuery.of(context).size.width > 800)
              const Padding(
                padding: EdgeInsets.all(24.0),
                child: SideBar(),
              ),
            Expanded(
                flex: 9,
                child: Center(
                    child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  children: const [
                    Intro(),
                    About()
                  ],
                )))
          ],
        ),
      ),
    );
  }
}
