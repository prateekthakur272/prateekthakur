import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:prateekthakur/widgets/about.dart';
import 'package:prateekthakur/widgets/bottom_bar.dart';
import 'package:prateekthakur/widgets/do_it_together.dart';
import 'package:prateekthakur/widgets/intro.dart';
import 'package:prateekthakur/widgets/portfolio.dart';
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
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Center(
          child: Row(
            children: [
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
                  )))
            ],
          ),
        ),
        floatingActionButton: isFabVisible
            ? SpeedDial(
                renderOverlay: false,
                direction: size.width>size.height? SpeedDialDirection.left:SpeedDialDirection.up,
                animatedIcon: AnimatedIcons.menu_close,
                backgroundColor: Colors.yellow.shade800,
                foregroundColor: Colors.white,
                children: [
                  SpeedDialChild(
                    child: const Icon(Icons.home),
                    onTap: () => controller.scrollTo(
                        index: 0, duration: const Duration(milliseconds: 500)),
                  ),
                  SpeedDialChild(
                    child: const Icon(Icons.account_circle),
                    onTap: () => controller.scrollTo(
                        index: 1, duration: const Duration(milliseconds: 500)),
                  ),
                  SpeedDialChild(
                    child: const Icon(Icons.school),
                    onTap: () => controller.scrollTo(
                        index: 3, duration: const Duration(milliseconds: 500)),
                  ),
                  SpeedDialChild(
                    child: const Icon(Icons.apps),
                    onTap: () => controller.scrollTo(
                        index: 7, duration: const Duration(milliseconds: 500)),
                  ),
                  SpeedDialChild(
                    child: const Icon(Icons.lightbulb),
                    onTap: () => controller.scrollTo(
                        index: 9, duration: const Duration(milliseconds: 500)),
                  ),
                ],
              )
            : null);
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
