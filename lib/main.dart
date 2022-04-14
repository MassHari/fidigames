import 'package:fidigames/signin_view.dart';
import 'package:flutter/material.dart';

import 'fidigames_home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fidigames',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignInView(title: 'Fidigames'),
    );
  }
}
