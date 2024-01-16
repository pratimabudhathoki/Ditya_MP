import 'package:coffee_shop/core/config/routing.dart';
import 'package:coffee_shop/core/config/theme.dart';
import 'package:coffee_shop/form/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: lightTheme,
        routerConfig: goRouter,
        
        );
  }
}

