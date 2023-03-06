import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lets_meet/src/app.dart';

Future<void> main() async {
  await Firebase.initializeApp();

  runApp(const App());
}
