import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:prateekthakur/constants.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height-54,
      child: Center(
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(title,style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold)),
                  const SizedBox(height: 16,),
                  const Text(subtitle ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4,),
                  const Text(organization ,style: TextStyle(fontSize: 18)),
                  //const SizedBox(height: 8,),
                  //OutlinedButton(onPressed: (){}, child: const Text('Contact me')),
                  const SizedBox(height: 24,),
                  Wrap(
                    runSpacing: 16,
                    spacing: 16,
                    children: [
                    IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.github)),
                    IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.instagram)),
                    IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.linkedin)),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.email)),
                  ],),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: CircleAvatar(
                foregroundImage: AssetImage('assets/picture.JPG'),
                backgroundColor: Colors.black,
                radius: 160,
              ),
            ),
          ],
        ),
      ),
    );
  }
}