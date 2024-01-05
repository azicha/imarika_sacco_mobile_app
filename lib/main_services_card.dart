import 'package:flutter/material.dart';
import 'package:imarika_sacco_mobile_app/global_variables.dart';

class MainServicesCard extends StatelessWidget {
  const MainServicesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: ListView.builder(
            itemCount: mainServices.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
              final mainService = mainServices[index];
              return Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      mainService['serviceIcon'] as IconData,
                      size: 32,
                    ),
                    Text(mainService['serviceName'] as String),
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
