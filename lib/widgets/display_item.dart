import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class DisplayItem extends StatelessWidget {
  final ImageProvider imageProvider;
  final String title;
  final String description;
  final String url;
  const DisplayItem(
      {super.key,
      required this.imageProvider,
      required this.title,
      required this.description,
      this.url = ''});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: AspectRatio(
              aspectRatio: 18 / 9,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image(
                  image: imageProvider,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            description,
            style: GoogleFonts.inconsolata(height: 1.2),
            textAlign: TextAlign.justify,
          ),
          if (url.isNotEmpty)
            const SizedBox(
              height: 8,
            ),
          if (url.isNotEmpty)
            IconButton(
                onPressed: () async {
                  final uri = Uri.parse(url);
                  if (await canLaunchUrl(uri)) {
                    launchUrl(uri);
                  }
                },
                tooltip: 'Click to view',
                icon: Icon(
                  FontAwesomeIcons.link,
                  color: Theme.of(context).colorScheme.onSecondary,
                ))
        ],
      ),
    );
  }
}
