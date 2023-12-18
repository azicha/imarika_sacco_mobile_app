import 'package:flutter/material.dart';
import 'package:imarika_sacco_mobile_app/global_variables.dart';

class MainServicesCard extends StatelessWidget {
  const MainServicesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: otherServices.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final mainService = mainServices[index];
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Icon(
                        mainService['serviceIcon'] as IconData,
                        size: 32,
                      ),
                      Text(mainService['serviceName'] as String),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
