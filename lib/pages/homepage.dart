import 'package:flutter/material.dart';
import 'package:prateekthakur/widgets/intro.dart';
import 'package:prateekthakur/widgets/side_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Prateek Thakur',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: const Center(
        child: Row(
          children: [
            //f(MediaQuery.of(context).size.width > 800)
            Padding(
              padding: EdgeInsets.all(24.0),
              child: SideBar(),
            ),
            Expanded(flex:9, child: Center(child: Intro()))
          ],
        ),
      ),
    );
  }
}
