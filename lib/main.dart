import 'package:flutter/material.dart';
import 'package:newproject/screens/splash.dart';

const SAVE_KEY_NAME ='userloggedIn';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'login sample',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Screenplash(),
    );
  }
}
