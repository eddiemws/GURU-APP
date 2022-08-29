// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DrawerHeader(
          decoration: BoxDecoration(color: Colors.black),
          child: Container(
            constraints: BoxConstraints(minWidth: double.infinity),
            child: Image.asset(
              'assets/images/guru.png',
              height: 30.0,
            ),
          ),
        ),
        ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListTile(
                hoverColor: Colors.yellow,
                onTap: () {},
                title: Text('Notes'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListTile(
                hoverColor: Colors.greenAccent,
                onTap: () {},
                title: Text('Bookmark'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListTile(
                hoverColor: Colors.lime,
                onTap: () {},
                title: Text('Privacy Policy'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListTile(
                hoverColor: Colors.pink,
                onTap: () {},
                title: Text('More Apps'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListTile(
                hoverColor: Colors.purple,
                onTap: () {},
                title: Text('Share'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListTile(
                hoverColor: Colors.orange,
                onTap: () {},
                title: Text('Facebook'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListTile(
                hoverColor: Colors.tealAccent,
                onTap: () {},
                title: Text('Twitter'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListTile(
                hoverColor: Colors.amberAccent,
                onTap: () {},
                title: Text('WhatsApp'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListTile(
                hoverColor: Colors.indigo,
                onTap: () {},
                title: Text('Instagram'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListTile(
                hoverColor: Colors.deepOrange,
                onTap: () {},
                title: Text('LinkdIn'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListTile(
                hoverColor: Colors.red,
                onTap: () {},
                title: Text('Github'),
              ),
            ),
          ],
        )
      ],
    );
  }
}
