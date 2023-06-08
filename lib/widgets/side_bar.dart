import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: Colors.grey.shade200,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 32,
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
            const SizedBox(
              height: 32,
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.bar_chart)),
            const SizedBox(
              height: 32,
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.email)),
            const SizedBox(
              height: 32,
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
            const SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}
