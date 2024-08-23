import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late TapGestureRecognizer _registerTapRecognizer;
  late TapGestureRecognizer _loginTapRecognizer;

  @override
  void initState() {
    super.initState();
    _registerTapRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.pushNamed(context, '/register');
      };

    _loginTapRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.pushNamed(context, '/login');
      };
  }

  @override
  void dispose() {
    _registerTapRecognizer.dispose();
    _loginTapRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      appBar: AppBar(
        title: const Center(
          child: Text("WORKFLOW MANAGEMENT SYSTEM"),
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center vertically
          crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
          children: [
            const Text(
              "Welcome to the workflow management system, Let's make your work easier",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            const SizedBox(height: 120), // Space between text and links
            RichText(
              text: TextSpan(
                text: "Don't have an account? ",
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
                children: [
                  TextSpan(
                    text: "Register now",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.blue, // Link color
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: _registerTapRecognizer,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            RichText(
              text: TextSpan(
                text: "Already have an account? ",
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
                children: [
                  TextSpan(
                    text: "Login",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: _loginTapRecognizer,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
