import 'package:coffee_shop/core/config/theme.dart';
import 'package:coffee_shop/form/registrationForm.dart';
import 'package:coffee_shop/otp/verification.dart';
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
        title: 'Flutter Demo',
        theme: lightTheme,
        home: RegestrationPage());
  }
}
