import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:prateekthakur/widgets/about.dart';
import 'package:prateekthakur/widgets/bottom_bar.dart';
import 'package:prateekthakur/widgets/do_it_together.dart';
import 'package:prateekthakur/widgets/intro.dart';
import 'package:prateekthakur/widgets/portfolio.dart';
import 'package:prateekthakur/widgets/skills.dart';

import '../widgets/qualifications.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var fabVisible = true;
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
                    DoItTogether(),
                    SizedBox(
                      height: 54,
                    ),
                    BottomBar()
                  ],
                )))
          ],
        ),
      ),
      floatingActionButton: fabVisible? SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        backgroundColor: Colors.yellow.shade800,
        foregroundColor: Colors.white,
        children: [
          SpeedDialChild(
            child: const Icon(Icons.home),
          ),
          SpeedDialChild(
            child: const Icon(Icons.account_circle),
          ),
          SpeedDialChild(
            child: const Icon(Icons.school),
          ),
          SpeedDialChild(
            child: const Icon(Icons.apps),
          ),
          SpeedDialChild(
            child: const Icon(Icons.lightbulb),
          ),
        ],
      ):null
    );
  }
}
