import 'package:flutter/material.dart';
import 'package:prateekthakur/constants.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      alignment: WrapAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: CircleAvatar(
            backgroundColor: Colors.black,
            radius: 160,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold)),
              SizedBox(height: 16,),
              Text(subtitle ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
            ],
          ),
        )
      ],
    );
  }
}