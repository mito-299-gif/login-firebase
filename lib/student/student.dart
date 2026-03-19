import 'package:flutter/material.dart';

class student extends StatefulWidget {
  const student({super.key});

  @override
  State<student> createState() => _studentState();
}

class _studentState extends State<student> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("student"), centerTitle: true),
      body: Center(child: Text("welcome student")),
    );
  }
}
