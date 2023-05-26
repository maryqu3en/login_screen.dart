// ignore_for_file: prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 138, 180, 218),
          //leading: const Icon(Icons.account_circle_rounded),
          title: const Text('Meriem SOUBIH'),
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                //margin: EdgeInsets.all(10),
                color: const Color.fromARGB(255, 132, 201, 185),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: const Text('Fill in your login information'),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Username",
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Password",
              ),
              obscureText: true,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 104, 177, 236),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              alignment: Alignment.center,
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ),
            ),
            RichText(
              text: TextSpan(
                  text: "Don't have an account? ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 11,
                  ),
                  children: const [
                    TextSpan(
                      text: "Sign in",
                      style: TextStyle(
                        color: Colors.purple,
                        decoration: TextDecoration.underline,
                        fontSize: 11,
                      ),
                      // recognizer: TapGestureRecognizer()
                      // ..onTap = () => launch('https://www.google.com'),
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
