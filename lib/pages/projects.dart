import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prateekthakur/repository/project.dart';
import 'package:prateekthakur/widgets/bottom_bar.dart';
import 'package:prateekthakur/widgets/window.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<StatefulWidget> createState() => _ProjectsState();
}

class _ProjectsState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        const SliverAppBar(
          snap: true,
          floating: true,
          title: Text(
            'Projects',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          sliver: SliverList.list(
            children: [
              const SizedBox(
                height: 32,
              ),
              Window(
                content: Column(
                  children: [
                    const Text(
                      'Projects',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "I firmly believe that projects are the ultimate way to showcase one's skills. They go beyond theoretical knowledge, allowing us to demonstrate our practical abilities and creativity. Projects serve as tangible evidence of our problem-solving capabilities, attention to detail, and dedication to delivering real-world solutions. They provide a platform to showcase our technical expertise and highlight our unique approach to problem-solving. Through my portfolio, I aim to present a collection of projects that not only exhibit my skills but also demonstrate my passion for turning ideas into reality. Each project is a testament to the endless possibilities that arise when skills and creativity intersect.",
                      style: GoogleFonts.inconsolata(height: 1.2),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Image.asset(
                      'assets/projects.png',
                      height: 200,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 32,
                runSpacing: 32,
                children: Project.getDisplayItems(),
              ),
              const SizedBox(
                height: 32,
              ),
              const BottomBar()
            ],
          ),
        )
      ]),
    );
  }
}
