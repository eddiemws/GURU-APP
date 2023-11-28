import 'package:flutter/material.dart';
import 'package:guruapp/app/screens/welcome/root.dart';

void main() {
  runApp(const MyApp());
}



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guru App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.red
      ),
      home: const WelcomePage(),
    );
  }
}

