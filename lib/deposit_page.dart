import 'package:flutter/material.dart';

class DepositPage extends StatelessWidget {
  const DepositPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Deposit from M-PESA',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Amount',
                  hintStyle: TextStyle(color: Colors.black26),
                ),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: false,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter M-PESA pin',
                  hintStyle: TextStyle(color: Colors.black26),
                ),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: false,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll(
                        (Colors.white),
                      ),
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.deepPurple),
                      fixedSize: MaterialStatePropertyAll(Size(150, 50))),
                  child: const Text('OK'))
            ],
          ),
        ),
      ),
    );
  }
}
