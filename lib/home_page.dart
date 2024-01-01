import 'package:flutter/material.dart';
import 'package:imarika_sacco_mobile_app/access_permission.dart';
import 'package:imarika_sacco_mobile_app/home_details.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  List<Widget> pages = const [
    HomeDetails(),
    AccessPermission(),
    AccessPermission(),
    AccessPermission(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.deepPurple,
        backgroundColor: const Color.fromARGB(255, 231, 230, 233),
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        currentIndex: currentPage,
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.deepPurple,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.savings,
              color: Colors.deepPurple,
            ),
            label: 'Savings',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.payments,
              color: Colors.deepPurple,
            ),
            label: 'Loans',
          ),
        ],
      ),
    );
  }
}
