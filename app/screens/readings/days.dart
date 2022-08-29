import 'package:flutter/material.dart';

class VirtuesPage extends StatelessWidget {
  final List<String> rdn;
  final String title;
  const VirtuesPage({super.key, required this.rdn, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        shadowColor: Colors.amber,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: rdn.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(rdn[index]),
              hoverColor: Colors.black,
              textColor: Colors.black,
            ),
          );
        },
      ),
    );
  }
}
        //this is a list style.j