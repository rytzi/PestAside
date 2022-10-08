import 'package:flutter/material.dart';
import 'components/welcomeScreen.dart';

void main() {
  runApp(const PestAsideApp());
}

class PestAsideApp extends StatelessWidget {
  const PestAsideApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pest Aside',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Georgia',
        textTheme: const TextTheme(
            headline1: TextStyle(
              fontSize: 50,
              color: Colors.black,
            )
        ),
        backgroundColor: const Color(0xFFFFFFFF),
        primaryColor: const Color(0xFFB1FF96),
        primaryColorDark: const Color(0xFF427624),
      ),
      home: const Scaffold(body: WelcomeScreen()),
    );
  }
}
