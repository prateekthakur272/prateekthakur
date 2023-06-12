import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoItTogether extends StatelessWidget {
  const DoItTogether({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Have an idea?',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        const Text(
          'Let\'s build it together',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          width: 600,
          child: Text(
            'Building together is fun, share your idea with me to work upon it together, or contact me for contributions in any project',
            textAlign: TextAlign.center,
            style: GoogleFonts.inconsolata(),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Image.asset('assets/2.png',height: 200,),
        const SizedBox(
          height: 16,
        ),
        OutlinedButton(onPressed: (){}, child: const Text('Share idea'))
      ],
    );
  }
}
