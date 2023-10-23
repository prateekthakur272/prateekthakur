import 'package:flutter/material.dart';
import 'package:prateekthakur/widgets/display_item.dart';

class Project {
  final String title;
  final String descrption;
  final String imageUrl;
  final String projectUrl;
  const Project(this.title, this.descrption, this.imageUrl, this.projectUrl);

  static List<DisplayItem> getDisplayItems() {
    return projects
        .map((service) => DisplayItem(
            imageProvider: AssetImage(service.imageUrl),
            url: service.projectUrl,
            title: service.title,
            description: service.descrption))
        .toList();
  }
}

const List<Project> projects = [
  Project(
    'Bloodnate',
    'Bloodnate is an idea of digitalising blood banks, This project is an app for Android and IOS. A user can make request for blood donation and can also find donor of some specific blood type and component, or can check availability of stocks in blood banks and can book it.',
    'assets/project_banners/bloodnate.png',
    'https://bloodnate.prateekthakur.dev',
  ),
  Project(
    'Sports Spotter',
    'Sports Spotter mobile application for Android and IOS devices, get updates about sports events, events results and registration forms',
    'assets/project_banners/sports_spotter.png',
    'https://github.com/prateekthakur272/sports-spotter',
  ),
  Project(
    'Bunkmate',
    'Bunkmate is a cross-platform mobile application to track daily collage lecture attandance built with Flutter and Firebase.',
    'assets/project_banners/bunkmate1.png',
    'https://github.com/prateekthakur272/bunkmate',
  ),
  Project(
    'IOS style calculator app',
    'IOS style calculator app bult with flutter',
    'assets/project_banners/ios_calculator.png',
    'https://github.com/prateekthakur272/calculator',
  ),
  Project(
    'PDF Go',
    'Never forget your tasks, just use the tasks app and keep yourself reminding about next tasks. This is an android application built with kotlin. This application have a good user experience and interactive and easy to access user interface.',
    'assets/project_banners/pdfgo.png',
    'https://github.com/prateekthakur272/pdf-go',
  ),
  Project(
    'Tasks',
    'Never forget your tasks, just use the tasks app and keep yourself reminding about next tasks. This is an android application built with kotlin. This application have a good user experience and interactive and easy to access user interface.',
    'assets/project_banners/tasks.png',
    'https://github.com/prateekthakur272/tasks',
  ),
  Project(
    'The Umbrella App',
    'Wheather app built with flutter for Android and IOS devices, provides 24hr wheather forecast report and other data such as humidity, wind direction, speed and air quality index.',
    'assets/project_banners/umbrella.png',
    'https://github.com/prateekthakur272/umbrella-app-flutter',
  ),
  Project(
    'Portfolio website',
    'My pesonal portfolio website built with flutter and deployed using firebase, available at https://prateekthakur.dev',
    'assets/project_banners/portfolio.png',
    'https://prateekthakur.dev',
  ),
  Project(
    'The Good Diary',
    'A personal diary android application to share moments and secrets with, application has good UI and UX and available in dark and light theme.',
    'assets/project_banners/good_diary.png',
    'https://github.com/prateekthakur272/Good-Diary',
  ),
  Project(
    'Password Generator',
    'Password generator mobile app for android and iOS devices, generate and use passwords for your apps and websites in the way you want.',
    'assets/project_banners/password_generator.png',
    'https://github.com/prateekthakur272/password-generator',
  ),
  Project(
    'Coverter',
    'Converter is an Android app to convert data from one unit to another unit.',
    'assets/project_banners/converter.png',
    'https://github.com/prateekthakur272/Converter',
  ),
  Project(
    'Tic Tac Toe',
    'The famous tic tac toe game for Android devices, play with your friend or with computer.',
    'assets/project_banners/tic_tac_toe.png',
    'https://github.com/prateekthakur272/Tic-Tac-Toe',
  ),
];
