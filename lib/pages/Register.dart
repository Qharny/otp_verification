import 'package:flutter/material.dart';

class RegisterHostel extends StatefulWidget {
  const RegisterHostel({super.key});

  @override
  State<RegisterHostel> createState() => _RegisterHostelState();
}

class _RegisterHostelState extends State<RegisterHostel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
