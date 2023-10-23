import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:prateekthakur/widgets/tab_item.dart';
import 'eduation.dart';
import 'experience.dart';

class Qualifications extends StatefulWidget {
  const Qualifications({super.key});

  @override
  State<Qualifications> createState() => _QualificationsState();
}

class _QualificationsState extends State<Qualifications> {
  Widget info = const Education();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Qualifications',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        const Text(
          'Education details and work experience',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
        const SizedBox(
          height: 32,
        ),
        DefaultTabController(
            length: 2,
            child: Column(
              children: [
                SizedBox(
                  width: 720,
                  child: TabBar(
                      splashBorderRadius: BorderRadius.circular(8),
                      labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                      unselectedLabelColor:
                          Theme.of(context).colorScheme.onSecondary,
                      labelColor: Colors.yellow.shade800,
                      indicatorColor: Colors.transparent,
                      onTap: (index) {
                        switch (index) {
                          case 0:
                            setState(() {
                              info = const Education();
                            });
                          case 1:
                            setState(() {
                              info = const Experience();
                            });
                        }
                      },
                      tabs: const [
                        TabItem(
                            title: 'Education', icon: FontAwesomeIcons.book),
                        TabItem(title: 'Work', icon: FontAwesomeIcons.toolbox),
                      ]),
                ),
                const SizedBox(
                  height: 16,
                ),
                info
              ],
            ))
      ],
    );
  }
}
