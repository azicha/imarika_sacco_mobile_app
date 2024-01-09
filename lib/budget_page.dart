import 'package:flutter/material.dart';

class BudgetPage extends StatelessWidget {
  const BudgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Icon(
            Icons.money,
            size: 96,
          ),
        ],
      ),
    );
  }
}
