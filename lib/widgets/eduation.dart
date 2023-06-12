import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.grey.shade200),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: 16,
                  width: 16,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.yellow.shade700
                  ),
                ),
                Container(
                  width: 2,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.yellow.shade700
                  ),
                ),
                Container(
                  height: 16,
                  width: 16,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.yellow.shade700
                  ),
                ),
              ],
            ),
            const SizedBox(width: 16,),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                QualificationItem(title: 'Bachelor of Technology', subtitle: 'Medi-Caps university, Indore 2020-24'),
                SizedBox(height: 16,),
                QualificationItem(title: 'Higher schooling', subtitle: 'PCM-CS, JNV Khandwa, 2018-20'),
              ],
            ),
          ],
        ),
      )
    );
  }
}

class QualificationItem extends StatelessWidget {
  final String title;
  final String subtitle;
  const QualificationItem({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: GoogleFonts.inconsolata(
              fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          subtitle,
          style: TextStyle(color: Colors.grey.shade700,fontSize: 12),
        )
      ],
    );
  }
}
