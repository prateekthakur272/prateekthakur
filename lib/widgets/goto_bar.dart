import 'package:flutter/material.dart';

class GoToBar extends StatefulWidget {
  final List<Widget> actions;
  const GoToBar({super.key, required this.actions});

  @override
  State<GoToBar> createState() => _GoToBarState();
}

class _GoToBarState extends State<GoToBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Material(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).colorScheme.secondary,
        elevation: 16,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Wrap(
              alignment: WrapAlignment.center,
              direction: Axis.horizontal,
              spacing: 24,
              children: widget.actions),
        ),
      ),
    );
  }
}
