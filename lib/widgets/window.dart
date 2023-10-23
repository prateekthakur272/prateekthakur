import 'package:flutter/material.dart';

class Window extends StatelessWidget {
  final Widget content;
  const Window({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: 8,
              children: [
                Container(
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.red.shade400),
                ),
                Container(
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.yellow.shade700),
                ),
                Container(
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.green.shade400),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            content,
          ],
        ));
  }
}
