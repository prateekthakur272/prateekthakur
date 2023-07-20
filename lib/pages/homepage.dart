import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:prateekthakur/widgets/about.dart';
import 'package:prateekthakur/widgets/bottom_bar.dart';
import 'package:prateekthakur/widgets/do_it_together.dart';
import 'package:prateekthakur/widgets/intro.dart';
import 'package:prateekthakur/widgets/portfolio.dart';
import 'package:prateekthakur/widgets/side_bar.dart';
import 'package:prateekthakur/widgets/skills.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../widgets/qualifications.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var isFabVisible = true;

  @override
  Widget build(BuildContext context) {
    final controller = ItemScrollController();
    final width = MediaQuery.sizeOf(context).width;

    final actions = [
      IconButton(
        onPressed: () => controller.scrollTo(
            index: 0, duration: const Duration(milliseconds: 500)),
        icon: const Icon(Icons.home),
        tooltip: 'Home',
      ),
      IconButton(
        onPressed: () => controller.scrollTo(
            index: 1, duration: const Duration(milliseconds: 500)),
        icon: const Icon(Icons.account_circle),
        tooltip: 'About',
      ),
      IconButton(
        onPressed: () => controller.scrollTo(
            index: 3, duration: const Duration(milliseconds: 500)),
        icon: const Icon(Icons.bar_chart),
        tooltip: 'Skills',
      ),
      IconButton(
        onPressed: () => controller.scrollTo(
            index: 5, duration: const Duration(milliseconds: 500)),
        icon: const Icon(Icons.school),
        tooltip: 'Education',
      ),
      IconButton(
        onPressed: () => controller.scrollTo(
            index: 7, duration: const Duration(milliseconds: 500)),
        icon: const Icon(Icons.apps),
        tooltip: 'Projects and Services',
      ),
      IconButton(
        onPressed: () => controller.scrollTo(
            index: 9, duration: const Duration(milliseconds: 500)),
        icon: const Icon(Icons.lightbulb),
        tooltip: 'Share idea',
      ),
    ];

    return Scaffold(
      body: Center(
        child: Row(
          children: [
            if (width >= 720) SideBar(actions: actions),
            Expanded(
                flex: 9,
                child: Center(
                    child: NotificationListener<UserScrollNotification>(
                  onNotification: (notification) {
                    if (notification.direction == ScrollDirection.forward) {
                      setState(() {
                        isFabVisible = true;
                      });
                    } else if (notification.direction ==
                        ScrollDirection.reverse) {
                      setState(() {
                        isFabVisible = false;
                      });
                    }
                    return true;
                  },
                  child: NestedScrollView(
                      headerSliverBuilder: (context, innerBoxIsScrolled) => [
                            const SliverAppBar(
                              floating: true,
                              snap: true,
                              title: Text(
                                'Prateek Thakur',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              centerTitle: true,
                            )
                          ],
                      body: ScrollablePositionedList.builder(
                          itemScrollController: controller,
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          itemCount: items.length,
                          itemBuilder: (context, index) => items[index])),
                ))),
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
