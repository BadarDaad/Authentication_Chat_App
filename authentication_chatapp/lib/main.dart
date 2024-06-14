import 'package:authentication_chatapp/auth/login_or_register.dart';
import 'package:authentication_chatapp/theme.dart/dark_mode.dart';
import 'package:authentication_chatapp/theme.dart/light_mode.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
      theme: lightmode,
      darkTheme: darkmode,
    );
  }
}
