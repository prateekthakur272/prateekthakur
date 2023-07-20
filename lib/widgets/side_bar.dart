import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  final List<Widget> actions;
  const SideBar({super.key, required this.actions});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: Material(
        color: Colors.grey.shade200,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Wrap(
              alignment: WrapAlignment.center,
              direction: Axis.vertical,
              spacing: 24,
              children: widget.actions),
        ),
      ),
    );
  }
}
