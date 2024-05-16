import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lesson_36/homework/app/page3.dart';

class Page5 extends StatefulWidget {
  const Page5({super.key});

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Gap(80),
          const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 28,
              ),
              child: Text(
                "  Let's Start Your Schedule Activity",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  height: 1,
                ),
              ),
            ),
          ),
          Gap(10),
          const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 22,
              ),
              child: Text(
                "Quickly see your upcoming event, task,    conference calls, wheather and more",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          const Image(
            image: AssetImage(
              "assets/app_images/page2image.png",
            ),
            height: 450,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Gap(20),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (ctx) {
                    return Page3();
                  },
                ),
              );
            },
            child: Container(
              width: 380,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.blue.shade800,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Text(
                  "Create Account",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
