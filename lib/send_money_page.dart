import 'package:flutter/material.dart';

class SendMoneyPage extends StatefulWidget {
  const SendMoneyPage({super.key});

  @override
  State<SendMoneyPage> createState() => _SendMoneyPageState();
}

class _SendMoneyPageState extends State<SendMoneyPage> {
  int? test = 1;

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 1.0,
        style: BorderStyle.none,
      ),
    );
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.person,
                  size: 96,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                title: const Text('SELF'),
                leading: Radio(
                    value: 1,
                    groupValue: test,
                    onChanged: (value) {
                      setState(() {
                        test = value;
                      });
                      debugPrint('$test');
                    }),
              ),
              ListTile(
                title: const Text('OTHER'),
                leading: Radio(
                    value: 2,
                    groupValue: test,
                    onChanged: (value) {
                      setState(() {
                        test = value;
                      });
                      debugPrint('$test');
                    }),
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'ENTER NUMBER',
                  hintStyle: TextStyle(color: Colors.black26),
                  focusedBorder: border,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'ENTER AMOUNT',
                  hintStyle: TextStyle(color: Colors.black26),
                  focusedBorder: border,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                  backgroundColor: MaterialStatePropertyAll(Colors.deepPurple),
                  fixedSize: MaterialStatePropertyAll(
                    Size(150, 40),
                  ),
                ),
                child: const Text('Send'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
