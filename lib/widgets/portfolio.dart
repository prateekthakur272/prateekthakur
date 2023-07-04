import 'package:flutter/material.dart';
import 'package:prateekthakur/pages/projects.dart';

import '../constants.dart';

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
        const Wrap(
            alignment: WrapAlignment.center,
            spacing: 32,
            runSpacing: 32,
            children: portfolioDisplayItems),
        const SizedBox(
          height: 54,
        ),
        const Text(
          'Projects',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        const Text(
          'My all time best projects',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
        const SizedBox(
          height: 16,
        ),
        Wrap(
          spacing: 32,
          runSpacing: 32,
          alignment: WrapAlignment.center,
          children: projectsDisplayItems.sublist(0, 3),
        ),
        const SizedBox(
          height: 16,
        ),
        OutlinedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Projects()));
            },
            child: const Text('View all projects')),
      ],
    );
  }
}
