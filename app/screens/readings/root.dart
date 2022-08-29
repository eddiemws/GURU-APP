import 'package:flutter/material.dart';
import 'package:guruapp/app/data/readings.dart';
import 'package:guruapp/app/screens/readings/days.dart';

class ReadingsPage extends StatelessWidget {
  const ReadingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        itemCount: readingsData.length,
        itemBuilder: (context, index) {
          final read = readingsData.keys.toList()[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VirtuesPage(
                      rdn: readingsData[read]!,
                      title: read,
                    ),
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                  ),
                  child: Text(
                    read,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
