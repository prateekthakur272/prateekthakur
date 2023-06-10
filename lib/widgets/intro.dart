import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:prateekthakur/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height-54,
      child: Center(
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.spaceEvenly,
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
                  const SizedBox(height: 24,),
                  Wrap(
                    runSpacing: 16,
                    spacing: 16,
                    children: [
                    IconButton(onPressed: ()async{
                      final url = Uri.parse('https://github.com/prateekthakur272');
                      if(await canLaunchUrl(url)){
                        launchUrl(url);
                      }
                    }, icon: const Icon(FontAwesomeIcons.github)),
                    IconButton(onPressed: ()async{
                      final url = Uri.parse('https://instagram.com/prateek_._thakur?igshid=OGQ5ZDc2ODk2ZA==');
                      if(await canLaunchUrl(url)){
                        launchUrl(url);
                      }
                    }, icon: const Icon(FontAwesomeIcons.instagram)),
                    IconButton(onPressed: ()async{
                      final url = Uri.parse('https://www.linkedin.com/in/prateek-thakur-452127216/');
                      if(await canLaunchUrl(url)){
                        launchUrl(url);
                      }
                    }, icon: const Icon(FontAwesomeIcons.linkedin)),
                    IconButton(onPressed: ()async{
                      final url = Uri.parse('mailto://prateekthakur272@gmail.com');
                      if(await canLaunchUrl(url)){
                        launchUrl(url);
                      }
                    }, icon: const Icon(Icons.email)),
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