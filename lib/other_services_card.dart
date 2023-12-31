import 'package:flutter/material.dart';

class OtherServicesCard extends StatelessWidget {
  final IconData serviceIcon;
  final String serviceName;
  const OtherServicesCard({
    super.key,
    required this.serviceIcon,
    required this.serviceName,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Icon(
                serviceIcon,
                size: 32,
              ),
              const SizedBox(height: 10),
              Text(serviceName)
            ],
          ),
        ),
      ),
    );
  }
}
