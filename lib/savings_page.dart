import 'package:flutter/material.dart';

class SavingsPage extends StatefulWidget {
  const SavingsPage({super.key});

  @override
  State<SavingsPage> createState() => _SavingsPageState();
}

class _SavingsPageState extends State<SavingsPage> {
  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 1.0,
        style: BorderStyle.solid,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Savings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const Text('Savings Balance is :'),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const Text(
                        'Target Savings',
                        style: TextStyle(),
                      ),
                      const Text(
                        '0.0',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextField(
                        // controller: phonecontroller,
                        decoration: InputDecoration(
                          labelText: 'Deposit amount from M-PESA',
                          labelStyle:
                              TextStyle(color: Color.fromARGB(255, 8, 8, 8)),
                          hintStyle:
                              TextStyle(color: Color.fromARGB(66, 68, 67, 67)),
                          focusedBorder: border,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromRGBO(103, 58, 183, 1)),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          fixedSize: MaterialStatePropertyAll(
                            Size(750, 50),
                          ),
                        ),
                        child: const Text('Continue'),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
