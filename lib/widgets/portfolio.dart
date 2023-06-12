import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Portfolio',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        const Text(
          'My recent projects and works',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
        const SizedBox(
          height: 32,
        ),
        CarouselSlider(
            items: portfolioDisplayItems,
            options: CarouselOptions(
              height: 480,
              enlargeCenterPage: true,
              autoPlay: true,
              onPageChanged: (i, r) {
                setState(() {
                  index = i;
                });
              },
            )),
        Row(
            mainAxisSize: MainAxisSize.min,
            children: portfolioDisplayItems.map((e) {
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: portfolioDisplayItems.indexOf(e) == index
                          ? Colors.black
                          : Colors.grey),
                ),
              );
            }).toList()),
        const SizedBox(
          height: 32,
        ),
        //const Wrap(spacing: 32, runSpacing: 32, children: projectsDisplayItems),
        const SizedBox(
          height: 32,
        ),
      ],
    );
  }
}

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
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image(
                image: imageProvider,
                fit: BoxFit.cover,
                height: 240,
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
            style: GoogleFonts.inconsolata(),
            textAlign: TextAlign.justify,
          ),
          if (url.isNotEmpty)
            const SizedBox(
              height: 8,
            ),
          if (url.isNotEmpty)
            IconButton(
                onPressed: () {}, icon: const Icon(FontAwesomeIcons.arrowRight))
        ],
      ),
    );
  }
}

const portfolioDisplayItems = [
  DisplayItem(
    imageProvider: NetworkImage(
        'https://www.simplilearn.com/ice9/free_resources_article_thumb/How_to_Become_an_Android_Developer.jpg'),
    title: 'Android Development',
    description:
        'I can develop high end android applications with my knowledge of MVVM (model view view model) architecture and solid foundation of node.js and firebase apis.',
    url: '',
  ),
  DisplayItem(
    imageProvider: NetworkImage(
        'https://terminalroot.com/assets/img/dart/flutter-dart.jpg'),
    title: 'Flutter Development',
    description:
        'With my knowledge of flutter and MVC (model view controller) architecture, i can develop cross platform mobile apps, web apps and desktop apps using dart programing.',
    url: '',
  ),
  DisplayItem(
    imageProvider: NetworkImage(
        'https://images.ctfassets.net/aq13lwl6616q/7cS8gBoWulxkWNWEm0FspJ/c7eb42dd82e27279307f8b9fc9b136fa/nodejs_cover_photo_smaller_size.png'),
    title: 'Backend Development',
    description:
        'Able to program web server for applications to store data and work with HTTP request and response, i can create server using express.js.',
    url: '',
  ),
];

const projectsDisplayItems = [
  DisplayItem(
    imageProvider: NetworkImage('assets/projects/bloodnate.png'),
    title: 'Bloodnate',
    description:
        'Bloodnate is an idea of digitalising blood banks, This project is an app for Android and IOS. A user can make request for blood donation and can also find donor of some specific blood type and component, or can check availability of stocks in blood banks and can book it.',
    url: '',
  ),
  DisplayItem(
    imageProvider: NetworkImage('assets/projects/bunkmate.png'),
    title: 'Bunkmate',
    description:
        'Bunkmate is a cross-platform mobile application to track daily collage lecture attandance built with Flutter and Firebase.',
    url: '',
  ),
  DisplayItem(
    imageProvider: NetworkImage('assets/projects/tasks.png'),
    title: 'Tasks',
    description:
        'Never forget your tasks, just use the tasks app and keep yourself reminding about next tasks. This is an android application built with kotlin. This application have a good user experience and interactive and easy to access user interface.',
    url: '',
  ),
];
