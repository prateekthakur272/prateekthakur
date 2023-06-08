import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CupertinoPageScaffold(
          navigationBar: const CupertinoNavigationBar(
            middle: Text('Prateek Thakur'),
          ),
          child: Center(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CupertinoSlidingSegmentedControl(
                    padding: const EdgeInsets.all(4),
                    children: const {
                      'Home': Text('Home'),
                      'About': Text('Home'),
                      'Contact': Text('Home'),
                    },
                    onValueChanged: (i) {},
                    thumbColor: CupertinoColors.systemGrey,
                    groupValue: 'Home',
                    
                  ),
                )
              ],
            ),
          )),
    );
  }
}
