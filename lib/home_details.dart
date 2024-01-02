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
        leading: IconButton(
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
        title: const Text(
          'Imarika Sacco',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 231, 230, 233),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200.0,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 231, 230, 233),
              boxShadow: const [BoxShadow(blurRadius: 0.05)],
              borderRadius: BorderRadius.vertical(
                bottom:
                    Radius.elliptical(MediaQuery.of(context).size.width, 30.0),
              ),
              gradient: const LinearGradient(
                  colors: [Colors.deepPurple, Colors.purple],
                  begin: FractionalOffset(0.0, 0.0),
                  end: FractionalOffset(0.5, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
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
                const Text('Welcome Back'),
              ],
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
    );
  }
}
