import 'package:flutter/material.dart';
import 'package:login_flrebasee/login/login.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: login());
  }
}
