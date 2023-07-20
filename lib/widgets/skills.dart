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
        SizedBox(
          height: 32,
        ),
        Wrap(
          spacing: 24,
          runSpacing: 24,
          children: [
            SizedBox(
              width: 400,
              child: ExpansionTile(
                leading: Icon(FontAwesomeIcons.desktop),
                title: Text(
                  'Frontend',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  ListTile(
                    title: Text('Flutter'),
                    subtitle: Text('Flutter for mobile, desktop & web'),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 400,
              child: ExpansionTile(
                leading: Icon(FontAwesomeIcons.server),
                title: Text(
                  'Backend',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  ListTile(
                    title: Text('Node js (express)'),
                    subtitle: Text('Http requests, json, apis, rest apis'),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 400,
              child: ExpansionTile(
                leading: Icon(FontAwesomeIcons.database),
                title: Text(
                  'Database',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  ListTile(
                    title: Text('SQLite'),
                    subtitle:
                        Text('Query, joins, connections and triggers etc.'),
                  ),
                  ListTile(
                    title: Text('MySQL'),
                    subtitle: Text('Query, joins, triggers and server etc.'),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 400,
              child: ExpansionTile(
                leading: Icon(FontAwesomeIcons.mobile),
                title: Text(
                  'Mobile',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  ListTile(
                    title: Text('Flutter'),
                    subtitle: Text('Flutter for android & ios'),
                  ),
                  ListTile(
                    title: Text('Android'),
                    subtitle: Text('Android SDK & android studio'),
                  ),
                  ListTile(
                    title: Text('Kotlin'),
                    subtitle: Text('Kotlin for android'),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 400,
              child: ExpansionTile(
                leading: Icon(FontAwesomeIcons.cloud),
                title: Text(
                  'Cloud',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  ListTile(
                    title: Text('AWS'),
                    subtitle:
                        Text('Amazon web services, computing, storage etc.'),
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
