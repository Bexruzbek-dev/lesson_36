import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lesson_36/homework/app/page6.dart';


class Page11 extends StatefulWidget {
  const Page11({super.key});

  @override
  State<Page11> createState() => _Page11State();
}

class _Page11State extends State<Page11> {
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
                    return Page6();
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
          ),
          Gap(15),
          const Image(
            image: AssetImage("assets/app_images/apple.png"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "You Have Account ?",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Log In",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue.shade800,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
