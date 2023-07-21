import 'package:flutter/material.dart';
import 'package:prateekthakur/constants.dart';
import 'package:prateekthakur/widgets/contact_links.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 54,
      child: const Center(
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 16,
                  ),
                  Text(subtitle,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 4,
                  ),
                  Text(organization, style: TextStyle(fontSize: 18)),
                  SizedBox(
                    height: 24,
                  ),
                  ContactLinks()
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: CircleAvatar(
                foregroundImage: AssetImage('assets/profile_picture.jpeg'),
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
