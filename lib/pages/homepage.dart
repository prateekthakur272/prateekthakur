import 'package:flutter/material.dart';
import 'package:prateekthakur/widgets/about.dart';
import 'package:prateekthakur/widgets/intro.dart';
import 'package:prateekthakur/widgets/portfolio.dart';
import 'package:prateekthakur/widgets/skills.dart';

import '../widgets/qualifications.dart';

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
            Expanded(
                flex: 9,
                child: Center(
                    child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  children: const [
                    Intro(),
                    About(),
                    SizedBox(
                      height: 54,
                    ),
                    Skills(),
                    SizedBox(
                      height: 54,
                    ),
                    Qualifications(),
                    SizedBox(
                      height: 54,
                    ),
                    Portfolio(),
                    SizedBox(
                      height: 54,
                    ),
                  ],
                )))
          ],
        ),
      ),
    );
  }
}
