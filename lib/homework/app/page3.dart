import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lesson_36/homework/app/page4.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Gap(100),
          const Image(
            image: AssetImage(
              "assets/app_images/page3image.png",
            ),
            height: 450,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue.shade800,
                  ),
                  color: Colors.blue.shade800,
                  shape: BoxShape.circle,
                ),
              ),
              Gap(5),
              Container(
                width: 35,
                height: 5,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue.shade800,
                  ),
                  color: Colors.blue.shade800,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Gap(5),
              Container(
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue.shade800,
                  ),
                  color: Colors.blue.shade800,
                  shape: BoxShape.circle,
                ),
              )
            ],
          ),
          Gap(70),
          const Text(
            "Set Your Schedule",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w700,
            ),
          ),
          Gap(20),
          const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Text(
                "Quickly see your upcoming event, task,   conference calls, wheather and more",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Gap(50),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (ctx) {
                    return Page4();
                  },
                ),
              );
            },
            child: Container(
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.blue.shade800,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Text(
                  "Get Started",
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
