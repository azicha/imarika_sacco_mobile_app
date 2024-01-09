import 'package:flutter/material.dart';

class StatementsList extends StatelessWidget {
  final IconData serviceIcon;
  final String serviceName;
  final IconData icon;
  const StatementsList({
    super.key,
    required this.serviceIcon,
    required this.serviceName,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15.0),
      height: 70,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        children: [
          Icon(
            serviceIcon,
            size: 32,
          ),
          Text(
            serviceName,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
          Icon(
            icon,
          ),
        ],
      ),
    );
  }
}
