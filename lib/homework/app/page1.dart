import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lesson_36/homework/app/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  Timer? duration;

  @override
  Widget build(BuildContext context) {
    timerToNextPage(context);
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(
              "assets/app_images/logo.png",
            ),
            height: 500,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}

void timerToNextPage(context) {
  Timer(Duration(seconds: 5), () {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (ctx) {
          return Page2();
        },
      ),
    );
  });
}
