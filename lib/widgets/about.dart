import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prateekthakur/constants.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const RotatedBox(
              quarterTurns: 3,
              child: Text(
                'About Me',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 48),
              ),
            ),
            Image.asset('assets/1.png',width: 240,height: 240,)
          ],
        ),
        const SizedBox(height: 48,),
        Container(
          padding: const EdgeInsets.all(24),
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            children: [
              Text(
                intro,
                style: GoogleFonts.inconsolata(
                    textStyle: const TextStyle(
                  fontSize: 16,
                )),
                textAlign: TextAlign.justify,
              )
            ],
          ),
        ),
      ],
    );
  }
}
