import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'My Skills',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        Text(
          'Technical knowledge',
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
        SizedBox(height: 32,),
        Wrap(
          spacing: 24,
          runSpacing: 24,
          children: [
            SizedBox(
              width: 400,
              child: ExpansionTile(
                leading: Icon(FontAwesomeIcons.desktop),
                title: Text('Frontend',style: TextStyle(fontWeight: FontWeight.bold),),
                children: [
                  ListTile(
                    title: Text('Flutter'),
                    subtitle: Text('90%'),
                  ),
                  ListTile(
                    title: Text('Android'),
                    subtitle: Text('75%'),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 400,
              child: ExpansionTile(
                leading: Icon(FontAwesomeIcons.server),
                title: Text('Backend',style: TextStyle(fontWeight: FontWeight.bold),),
                children: [
                  ListTile(
                    title: Text('Node JS'),
                    subtitle: Text('70%'),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 400,
              child: ExpansionTile(
                leading: Icon(FontAwesomeIcons.database),
                title: Text('Database',style: TextStyle(fontWeight: FontWeight.bold),),
                children: [
                  ListTile(
                    title: Text('SQLite'),
                    subtitle: Text('80%'),
                  ),
                  ListTile(
                    title: Text('MySQL'),
                    subtitle: Text('70%'),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 400,
              child: ExpansionTile(
                leading: Icon(FontAwesomeIcons.mobile),
                title: Text('Mobile',style: TextStyle(fontWeight: FontWeight.bold),),
                children: [
                  ListTile(
                    title: Text('Flutter'),
                    subtitle: Text('90%'),
                  ),
                  ListTile(
                    title: Text('Android'),
                    subtitle: Text('75%'),
                  ),
                  ListTile(
                    title: Text('Kotlin'),
                    subtitle: Text('75%'),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 400,
              child: ExpansionTile(
                leading: Icon(FontAwesomeIcons.google),
                title: Text('Firebase',style: TextStyle(fontWeight: FontWeight.bold),),
                children: [
                  ListTile(
                    title: Text('Authentication'),
                  ),
                  ListTile(
                    title: Text('Firestore'),
                  ),
                  ListTile(
                    title: Text('Firebase storage'),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
