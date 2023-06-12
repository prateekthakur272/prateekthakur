import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  final String title;
  final IconData icon;
  const TabItem({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon,size: 16,),
          const SizedBox(width: 8,),
          Text(title,style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),)
        ],
      ),
    );
  }
}