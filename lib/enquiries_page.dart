import 'package:flutter/material.dart';
import 'package:imarika_sacco_mobile_app/enquiries_form.dart';

class EnquiriesPage extends StatelessWidget {
  const EnquiriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              'Frequently Asked questions',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ExpansionTile(
              title: const Text("How do I withdraw money?"), //header title
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 7,
                        color: Color.fromARGB(255, 180, 182, 183),
                      ),
                    ],
                  ),
                  child: const Text("Answers for Question One"),
                ),
              ],
            ),
            InkWell(
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Have any Question? Ask here.',
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const EnquiriesForm();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
