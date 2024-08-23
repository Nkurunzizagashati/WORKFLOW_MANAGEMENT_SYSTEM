import 'package:flutter/material.dart';
import 'package:workflow_management_system/pages/auth/login_page.dart';
import 'package:workflow_management_system/pages/auth/register_page.dart';
import 'package:workflow_management_system/pages/home_page.dart';
import 'package:firebase_core/firebase_core.dart'; // Import firebase_core

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Initialize Firebase
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WORKFLOW MANAGEMENT SYSTEM",
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/register': (context) => const RegisterPage(),
        '/login': (context) => const LoginPage(),
      },
    );
  }
}
