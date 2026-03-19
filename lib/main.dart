import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_flrebasee/firebase_options.dart';
import 'package:login_flrebasee/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  return runApp(home());
}
