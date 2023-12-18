import 'package:flutter/material.dart';
import 'package:imarika_sacco_mobile_app/global_variables.dart';
import 'package:imarika_sacco_mobile_app/main_services_card.dart';
import 'package:imarika_sacco_mobile_app/menu_options.dart';
import 'package:imarika_sacco_mobile_app/other_services_card.dart';

class HomeDetails extends StatelessWidget {
  const HomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const MenuOptions();
                  },
                ),
              );
            },
            icon: const Icon(Icons.menu),
          ),
        ],
        title: const Text(
          'Imarika Sacco',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Greetings & profile picture
            SizedBox(
              width: double.infinity,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.person_2_rounded,
                          size: 64,
                        ),
                      ),
                      const Text('Good Morning, Aska'),
                      const SizedBox(height: 10),
                      const Text('Welcome Back')
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Expanded(
              child: MainServicesCard(),
            ),

            const SizedBox(height: 40),

            Expanded(
              child: ListView.builder(
                itemCount: otherServices.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final otherService = otherServices[index];
                  return OtherServicesCard(
                    serviceIcon: otherService['serviceIcon'] as IconData,
                    serviceName: otherService['serviceName'] as String,
                  );
                },
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
