import 'package:flutter/material.dart';

import 'package:fyp/feature/login/views/login.dart';
import 'package:fyp/feature/signup/views/signup_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/signup.jpeg'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 80, top: 200),
              child: const Text(
                'Lyrics and Chords',
                style: TextStyle(
                    color: Colors.white, fontSize: 30, fontWeight: FontWeight.w200),
              ),
            ),
            Container(
              width: 350,
              padding: const EdgeInsets.fromLTRB(80, 300, 30, 0),
              child: RaisedButton(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: const BorderSide()),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                padding: const EdgeInsets.all(10.0),
                textColor: const Color(0xff4c505b),
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            ),
            Container(
              width: 350,
              padding: const EdgeInsets.fromLTRB(80, 400, 30, 0),
              child: RaisedButton(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: const BorderSide(),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignupPage()),
                  );
                },
                padding: const EdgeInsets.all(10.0),
                textColor: const Color(0xff4c505b),
                child: const Text(
                  "Register",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
