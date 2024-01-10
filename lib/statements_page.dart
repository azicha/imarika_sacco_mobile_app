import 'package:flutter/material.dart';
import 'package:imarika_sacco_mobile_app/global_variables.dart';
import 'package:imarika_sacco_mobile_app/statements_list.dart';

class StatementsPage extends StatelessWidget {
  const StatementsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              'Statements',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: statementsservices.length,
                scrollDirection: Axis.vertical,
                itemBuilder: ((context, index) {
                  final statement = statementsservices[index];
                  return StatementsList(
                    serviceIcon: statement['serviceIcon'] as IconData,
                    serviceName: statement['serviceName'] as String,
                    icon: statement['icon'] as IconData,
                    page: statement['page'] as Widget,
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
