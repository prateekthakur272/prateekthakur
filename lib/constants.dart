import 'package:flutter/material.dart';
import 'package:prateekthakur/widgets/display_item.dart';

const title = 'Prateek Thakur';
const subtitle = 'Flutter | Android | Backend | Developer';
const organization = 'Student at Medi-caps University';
const intro =
    'Welcome to my portfolio website! I\'m Prateek Thakur, a passionate software developer with expertise in Flutter, Android development, Node.js, and Firebase. With a strong foundation in mobile app development, I bring creativity and functionality to life through my coding skills. I thrive on building user-friendly interfaces and delivering seamless experiences. As a dedicated learner, I keep up with the latest industry trends to ensure my projects are up-to-date and innovative. Feel free to explore my portfolio and witness the exciting projects I\'ve crafted using my skills. Let\'s connect and collaborate to turn your ideas into reality!';

const resumeUrl =
    'https://drive.google.com/file/d/1UX1nGJr_rxK8cD_Y-2gwh3vNnPHa_jzO/view?usp=share_link';

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
    imageProvider: AssetImage('assets/project_banners/pdfgo.png'),
    title: 'PDF Go',
    description:
        'Never forget your tasks, just use the tasks app and keep yourself reminding about next tasks. This is an android application built with kotlin. This application have a good user experience and interactive and easy to access user interface.',
    url: 'https://github.com/prateekthakur272/tasks',
  ),
  DisplayItem(
    imageProvider: AssetImage('assets/project_banners/tasks.png'),
    title: 'Tasks',
    description:
        'Never forget your tasks, just use the tasks app and keep yourself reminding about next tasks. This is an android application built with kotlin. This application have a good user experience and interactive and easy to access user interface.',
    url: 'https://github.com/prateekthakur272/tasks',
  ),
  DisplayItem(
    imageProvider: AssetImage('assets/project_banners/bunkmate1.png'),
    title: 'Bunkmate',
    description:
        'Bunkmate is a cross-platform mobile application to track daily collage lecture attandance built with Flutter and Firebase.',
    url: 'https://github.com/prateekthakur272/bunkmate',
  ),
  DisplayItem(
    imageProvider: AssetImage('assets/project_banners/bloodnate.png'),
    title: 'Bloodnate',
    description:
        'Bloodnate is an idea of digitalising blood banks, This project is an app for Android and IOS. A user can make request for blood donation and can also find donor of some specific blood type and component, or can check availability of stocks in blood banks and can book it.',
    url: 'https://bloodnate.prateekthakur.dev',
  ),
];

var carouselItems = [
  Container(
    clipBehavior: Clip.hardEdge,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
    child: Image.asset('assets/project_banners/bloodnate.png'),
  ),
  Container(
    clipBehavior: Clip.hardEdge,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
    child: Image.asset('assets/project_banners/tasks.png'),
  ),
  Container(
    clipBehavior: Clip.hardEdge,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
    child: Image.asset('assets/project_banners/pdfgo.png'),
  ),
];
