import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:prateekthakur/constants.dart';
import 'package:prateekthakur/widgets/about.dart';
import 'package:prateekthakur/widgets/bottom_bar.dart';
import 'package:prateekthakur/widgets/do_it_together.dart';
import 'package:prateekthakur/widgets/intro.dart';
import 'package:prateekthakur/widgets/portfolio.dart';
import 'package:prateekthakur/widgets/goto_bar.dart';
import 'package:prateekthakur/widgets/skills.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../widgets/qualifications.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var isBarVisible = true;

  @override
  Widget build(BuildContext context) {
    final controller = ItemScrollController();
    final width = MediaQuery.sizeOf(context).width;

    final actions = [
      IconButton(
        onPressed: () => controller.scrollTo(
            index: 0, duration: const Duration(milliseconds: 500)),
        icon: Icon(
          Icons.home,
          color: Theme.of(context).colorScheme.onSecondary,
        ),
        tooltip: 'Home',
      ),
      IconButton(
        onPressed: () => controller.scrollTo(
            index: 1, duration: const Duration(milliseconds: 500)),
        icon: Icon(
          Icons.account_circle,
          color: Theme.of(context).colorScheme.onSecondary,
        ),
        tooltip: 'About',
      ),
      IconButton(
        onPressed: () => controller.scrollTo(
            index: 3, duration: const Duration(milliseconds: 500)),
        icon: Icon(
          Icons.bar_chart,
          color: Theme.of(context).colorScheme.onSecondary,
        ),
        tooltip: 'Skills',
      ),
      IconButton(
        onPressed: () => controller.scrollTo(
            index: 5, duration: const Duration(milliseconds: 500)),
        icon: Icon(
          Icons.school,
          color: Theme.of(context).colorScheme.onSecondary,
        ),
        tooltip: 'Education',
      ),
      IconButton(
        onPressed: () => controller.scrollTo(
            index: 7, duration: const Duration(milliseconds: 500)),
        icon: Icon(
          Icons.apps,
          color: Theme.of(context).colorScheme.onSecondary,
        ),
        tooltip: 'Projects and Services',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Center(
              child: NotificationListener<UserScrollNotification>(
                  onNotification: (notification) {
                    if (notification.direction == ScrollDirection.forward) {
                      setState(() {
                        isBarVisible = true;
                      });
                    } else if (notification.direction ==
                        ScrollDirection.reverse) {
                      setState(() {
                        isBarVisible = false;
                      });
                    }
                    return true;
                  },
                  child: ScrollablePositionedList.builder(
                      itemScrollController: controller,
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      itemCount: items.length,
                      itemBuilder: (context, index) => items[index])),
            ),
            if (isBarVisible && width >= 720) GoToBar(actions: actions),
          ],
        ),
      ),
      drawer: width < 720
          ? NavigationDrawer(
              children: actions
                  .map((e) => ListTile(
                        title: Text(e.tooltip!),
                        leading: e.icon,
                        iconColor: Colors.black,
                        onTap: () {
                          if (e.onPressed != null) {
                            e.onPressed!();
                          }
                          Navigator.pop(context);
                        },
                      ))
                  .toList(),
            )
          : null,
    );
  }
}

const items = [
  Intro(),
  About(),
  SizedBox(
    height: 54,
  ),
  Skills(),
  SizedBox(
    height: 54,
  ),
  Qualifications(),
  SizedBox(
    height: 54,
  ),
  Portfolio(),
  SizedBox(
    height: 54,
  ),
  DoItTogether(),
  SizedBox(
    height: 54,
  ),
  BottomBar()
];
