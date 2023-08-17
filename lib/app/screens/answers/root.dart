import 'package:flutter/material.dart';
import 'package:guruapp/app/data/qa_data.dart';

class AnswersPage extends StatelessWidget {
  const AnswersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      itemCount: qaData.length,
      itemBuilder: (context, index) {
        var question = qaData[index]['question'] as List<String>;
        return Container(
          color: Colors.amber,
         
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      qaData[index]['title'],
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  constraints: const BoxConstraints(minWidth: double.infinity),
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(question[0]),
                      const SizedBox(height: 18),
                      Text(question[1]),
                    ],
                  ),
                ),
                Container(
                  constraints: const BoxConstraints(minWidth: double.infinity),
                  decoration:
                      const BoxDecoration(color: Color.fromARGB(255, 64, 179, 251)),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Guru Answer',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(color: Colors.green),
                  child: Text(
                    qaData[index]['answer'],
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
