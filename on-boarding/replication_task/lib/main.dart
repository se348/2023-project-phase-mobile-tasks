import 'package:flutter/material.dart';
import 'package:replication_task/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(238, 111, 87, 1),
        useMaterial3: true,
      ),
      home: const OnBoarding(),
    );
  }
}

