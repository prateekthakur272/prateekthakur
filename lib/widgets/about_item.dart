import 'package:flutter/material.dart';

class AboutItem extends StatelessWidget {
  final String head;
  final String foot;
  const AboutItem(this.head,this.foot,{super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          head,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          foot,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
