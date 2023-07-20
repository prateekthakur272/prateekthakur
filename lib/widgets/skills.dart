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
                leading: Icon(FontAwesomeIcons.code),
                title: Text(
                  'Programming',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  ListTile(title: Text('C++')),
                  ListTile(title: Text('Java')),
                  ListTile(title: Text('Python')),
                  ListTile(title: Text('Dart')),
                  ListTile(title: Text('Kotlin')),
                  ListTile(title: Text('Javascript')),
                ],
              ),
            ),
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
                leading: Icon(FontAwesomeIcons.nodeJs),
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
                leading: Icon(FontAwesomeIcons.aws),
                title: Text(
                  'AWS',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  ListTile(
                    title: Text('Computing'),
                    subtitle: Text('Creating cloud based virtual machines'),
                  ),
                  ListTile(
                    title: Text('Storage'),
                    subtitle: Text('Store data over cloud'),
                  ),
                  ListTile(
                    title: Text('Hosting'),
                    subtitle: Text(
                        'Host and run web apps and web servers over cloud'),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 400,
              child: ExpansionTile(
                leading: Icon(FontAwesomeIcons.docker),
                title: Text(
                  'Docker',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  ListTile(
                    title: Text('Docker containers'),
                    subtitle: Text('Create and run application in a container'),
                  ),
                  ListTile(
                    title: Text('Docker hub'),
                    subtitle: Text('publish & pull container'),
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
