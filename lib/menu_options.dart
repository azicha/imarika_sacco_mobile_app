import 'package:flutter/material.dart';
import 'package:imarika_sacco_mobile_app/pin_reset.dart';

class MenuOptions extends StatelessWidget {
  const MenuOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person_2,
                size: 96,
              ),
            ),
            const Text(
              'ASKA KAUCHI KALUME',
              style: TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('254743983273'),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const PinReset();
                      },
                    ),
                  );
                },
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.white),
                    foregroundColor: MaterialStatePropertyAll(Colors.black),
                    fixedSize: MaterialStatePropertyAll(
                      Size(710, 50),
                    )),
                child: const Text('CHANGE PIN'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  
                },
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.white),
                    foregroundColor: MaterialStatePropertyAll(Colors.black),
                    fixedSize: MaterialStatePropertyAll(
                      Size(710, 50),
                    )),
                child: const Text('LOGOUT'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
