import 'package:flutter/material.dart';
import 'package:imarika_sacco_mobile_app/home_page.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

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
        title: const Text(
          'Login',
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 231, 230, 233),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            left: 20.0, top: 5.0, right: 20.0, bottom: 5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, top: 10.0, right: 20.0, bottom: 20.0),
                child: Column(
                  children: [
                    // const Spacer(flex: 1),
                    Image.asset(
                      'assets/images/app-logo.png',
                      height: 50,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'assets/images/log-in.png',
                      height: 150,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Enter pin',
                        labelStyle:
                            TextStyle(color: Color.fromARGB(255, 8, 8, 8)),
                        hintText: '1234',
                        hintStyle:
                            TextStyle(color: Color.fromARGB(66, 68, 67, 67)),
                        focusedBorder: border,
                      ),
                      keyboardType: TextInputType.numberWithOptions(
                        decimal: false,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const HomePage();
                            },
                          ),
                        );
                      },
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromRGBO(103, 58, 183, 1)),
                        foregroundColor: MaterialStatePropertyAll(Colors.white),
                        fixedSize: MaterialStatePropertyAll(
                          Size(750, 50),
                        ),
                      ),
                      child: const Text('Login'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
