import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prateekthakur/constants.dart';
import 'package:prateekthakur/widgets/about_item.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.spaceEvenly,
          runSpacing: 24,
          spacing: 24,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    'About Me',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 48),
                  ),
                ),
                Image.asset(
                  'assets/1.png',
                  width: 240,
                  height: 240,
                ),
              ],
            ),
            const SizedBox(
              height: 48,
            ),
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(16)),
              child: SizedBox(
                width: 400,
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
            ),
          ],
        ),
        const SizedBox(
          height: 56,
        ),
        const Wrap(
          alignment: WrapAlignment.spaceEvenly,
          runAlignment: WrapAlignment.spaceEvenly,
          spacing: 24,
          runSpacing: 24,
          children: [
            AboutItem('4+', 'Years\nexperience'),
            AboutItem('5+', 'Known\nlanguages'),
            AboutItem('20+', 'Projects\nbuilt'),
          ],
        ),
        const SizedBox(
          height: 48,
        ),
        OutlinedButton(
            onPressed: () async {
              final url = Uri.parse(resumeUrl);
              if (await canLaunchUrl(url)) {
                launchUrl(url);
              }
            },
            child: const Text('Download CV'))
      ],
    );
  }
}
