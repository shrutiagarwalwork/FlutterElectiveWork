import 'package:flutter/material.dart';
import 'quiz_screen.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Quiz App',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF6C63FF),
        primaryColor: const Color(0xFFFFEE58),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFFFFDD0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            textStyle:
                const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      home: const Scaffold(
        appBar: QuizAppBar(),
        body: QuizScreen(),
      ),
    );
  }
}

class QuizAppBar extends StatelessWidget implements PreferredSizeWidget {
  const QuizAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFFFFDD0),
      centerTitle: true,
      title: const Text(
        ' Welcome to Quiz App',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
