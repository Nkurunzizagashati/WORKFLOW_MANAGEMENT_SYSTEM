import 'package:flutter/material.dart';
import 'package:workflow_management_system/pages/auth/login_page.dart';
import 'package:workflow_management_system/pages/auth/register_page.dart';
import 'package:workflow_management_system/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
