import 'package:confess_app/love_question_page.dart';
import 'package:confess_app/love_success_page.dart';
import 'package:confess_app/name_input_page_state.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CuteLoveApp());
}

class CuteLoveApp extends StatelessWidget {
  const CuteLoveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Do You Love Me?',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: const Color(0xFFFFF0F3),
        fontFamily: 'Poppins', // Fallback to default if not added
      ),
      home: const LoveSuccessPage (),
    );
  }
}

