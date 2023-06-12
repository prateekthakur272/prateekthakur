import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactLinks extends StatelessWidget {
  const ContactLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 16,
      spacing: 16,
      children: [
        IconButton(
            onPressed: () async {
              final url = Uri.parse('https://github.com/prateekthakur272');
              if (await canLaunchUrl(url)) {
                launchUrl(url);
              }
            },
            icon: const Icon(FontAwesomeIcons.github)),
        IconButton(
            onPressed: () async {
              final url = Uri.parse(
                  'https://instagram.com/prateek_._thakur?igshid=OGQ5ZDc2ODk2ZA==');
              if (await canLaunchUrl(url)) {
                launchUrl(url);
              }
            },
            icon: const Icon(FontAwesomeIcons.instagram)),
        IconButton(
            onPressed: () async {
              final url = Uri.parse(
                  'https://www.linkedin.com/in/prateek-thakur-452127216/');
              if (await canLaunchUrl(url)) {
                launchUrl(url);
              }
            },
            icon: const Icon(FontAwesomeIcons.linkedin)),
        IconButton(
            onPressed: () async {
              final url = Uri.parse('mailto://prateekthakur272@gmail.com');
              if (await canLaunchUrl(url)) {
                launchUrl(url);
              }
            },
            icon: const Icon(Icons.email)),
      ],
    );
  }
}
