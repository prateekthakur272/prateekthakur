import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prateekthakur/constants.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          const Text(
            'About',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(height: 8,),
          Text(
            intro,
            style: GoogleFonts.inconsolata(
              textStyle: const TextStyle(
                fontSize: 16,
              )
            ),
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}
