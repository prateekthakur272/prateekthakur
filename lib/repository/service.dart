import 'package:flutter/material.dart';
import 'package:prateekthakur/widgets/display_item.dart';

class Service {
  final String title;
  final String descrption;
  final String imageUrl;
  const Service(this.title, this.descrption, this.imageUrl);

  static List<DisplayItem> getDisplayItems() {
    return services
        .map((service) => DisplayItem(
            imageProvider: AssetImage(service.imageUrl),
            title: service.title,
            description: service.descrption))
        .toList();
  }
}

List<Service> services = [
  const Service(
    'Flutter Development',
    'With my knowledge of flutter and MVC (model view controller) architecture, I can develop cross platform mobile apps, web apps and desktop apps using dart programing.',
    'assets/portfolio_banners/flutter.png',
  ),
  const Service(
      'Backend Development',
      'Able to program web server for applications to store data and work with HTTP request and response, I can create server using Golang and python (Django and FastAPI).',
      'assets/portfolio_banners/golang.png'),
  const Service(
      'Android Development',
      'I can develop high end android applications with my knowledge of MVVM (model view view model) architecture and solid foundation of node.js and firebase apis.',
      'assets/portfolio_banners/android.webp'),
];
