import 'package:flutter/material.dart';
import 'package:otp_screen/home.dart';



class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const HomePage(accessToken: '',),
    );
  }
}

void main() {
  runApp(const MyApp());
}
