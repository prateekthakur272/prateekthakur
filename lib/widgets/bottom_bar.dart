import 'package:flutter/material.dart';
import 'package:prateekthakur/widgets/contact_links.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(16))
      ),
      child: const Column(
        children: [
          Text('Prateek Thakur',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          SizedBox(height: 4,),
          Text('prateekthakur.dev',style: TextStyle(fontSize: 16),),
          SizedBox(height: 8,),
          ContactLinks(),
        ],
      ),
    );
  }
}