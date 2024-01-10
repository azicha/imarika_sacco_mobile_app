import 'package:flutter/material.dart';

class AccessPermission extends StatefulWidget {
  const AccessPermission({super.key});

  @override
  State<AccessPermission> createState() => _AccessPermissionState();
}

class _AccessPermissionState extends State<AccessPermission> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: controller,
                style: const TextStyle(color: Colors.black),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildButton('1'),
                buildButton('2'),
                buildButton('3'),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildButton('4'),
                buildButton('5'),
                buildButton('6'),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildButton('7'),
                buildButton('8'),
                buildButton('9'),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                buildButton('OK'),
                buildButton('0'),
                buildButton('Del', onPressed: _backspace),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildButton(String text, {VoidCallback? onPressed}) {
    return Expanded(
      child: TextButton(
        onPressed: onPressed ?? () => _input(text),
        child: Text(text),
      ),
    );
  }

  void _input(String text) {
    final value = controller.text + text;
    controller.text = value;
  }

  void _backspace() {
    final value = controller.text;
    if (value.isNotEmpty) {
      controller.text = value.substring(0, value.length - 1);
    }
  }
}
