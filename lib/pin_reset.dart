import 'package:flutter/material.dart';

class PinReset extends StatelessWidget {
  const PinReset({super.key});

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 1.0,
        style: BorderStyle.none,
      ),
    );
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        children: [
          Container(
            height: 250,
            decoration: const BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const TextField(
            decoration: InputDecoration(
              hintText: 'Enter Your Current Pin',
              hintStyle: TextStyle(
                color: Colors.black,
              ),
              focusedBorder: border,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const TextField(
            decoration: InputDecoration(
              hintText: 'Enter Your New Pin',
              hintStyle: TextStyle(
                color: Colors.black,
              ),
              focusedBorder: border,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const TextField(
            decoration: InputDecoration(
              hintText: 'Confirm Your New Pin',
              hintStyle: TextStyle(
                color: Colors.black,
              ),
              focusedBorder: border,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.deepPurple),
              foregroundColor: MaterialStatePropertyAll(Colors.white),
              fixedSize: MaterialStatePropertyAll(
                Size(150, 50),
              ),
            ),
            child: const Text('Re-Set'),
          ),
        ],
      ),
    ));
  }
}
