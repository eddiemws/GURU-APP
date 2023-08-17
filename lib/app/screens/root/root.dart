import 'package:flutter/material.dart';
import 'package:guruapp/app/screens/answers/root.dart';
import 'package:guruapp/app/screens/home/root.dart';
import 'package:guruapp/app/screens/readings/root.dart';
import 'package:guruapp/app/screens/root/drawer.dart';

class RootApp extends StatefulWidget {
  const RootApp({super.key});

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final List<NavigationDestination> destinations = const [
    NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
    NavigationDestination(
        icon: Icon(
          Icons.book,
        ),
        label: 'Quotes'),
    NavigationDestination(icon: Icon(Icons.plus_one), label: 'Guru Answers'),
    NavigationDestination(icon: Icon(Icons.menu), label: 'More'),
  ];

  final List<Widget> pages = [
    const Home(),
    const ReadingsPage(),
    const AnswersPage(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        leading: const SizedBox.shrink(),
        title: Text(
          getTitle(),
          style: const TextStyle(color: Colors.pink),
        ),
        centerTitle: true,
        backgroundColor: Colors.red.withOpacity(.2),
        elevation: 0,
        actions: [ SizedBox.shrink()],
      ),
      body: pages.elementAt(selectedIndex),
      endDrawer: const Drawer(
        backgroundColor: Colors.white,
        child: MyDrawer(),
      ),
      bottomNavigationBar: Builder(builder: (context) {
        return NavigationBar(
          height: 60.0,
          selectedIndex: selectedIndex,
          destinations: destinations,
          onDestinationSelected: (value) {
            if (value == 3) {
              print('3');
              // _key.currentState!.openEndDrawer();
              Scaffold.of(context).openEndDrawer();
            } else {
              setState(() => selectedIndex = value);
            }
          },
        );
      }),
    );
  }

  String getTitle() {
    switch (selectedIndex) {
      case 0:
        return 'Home';
      case 1:
        return 'Quotes';
      case 2:
        return 'Guru Answers';
      case 3:
        return 'More';
      default:
        return 'Guru';
    }
  }
}
