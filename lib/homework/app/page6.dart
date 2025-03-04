import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:lesson_36/homework/app/page11.dart';
import 'package:lesson_36/homework/app/page7.dart';

class Page6 extends StatefulWidget {
  const Page6({super.key});

  @override
  State<Page6> createState() => _Page6State();
}

class _Page6State extends State<Page6> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  String emailError = "";
  String passwordError = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(60),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 28,
            ),
            child: Text(
              "Welcome Back",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const Gap(10),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 22,
            ),
            child: Text(
              "Let's Login to Connect your email",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
          ),
          Gap(40),
          TextField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              // prefix: Icon(Icons.email),
              prefixIcon: const Icon(Icons.email),
              suffixIcon: const Icon(Icons.remove_red_eye),
              label: const Text("Email address"),
              hintText: "Email address",
              error: emailError.isNotEmpty ? Text(emailError) : null,
              // fillColor: Colors.blue,
              // filled: true,
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: passwordController,
            obscureText: true,
            obscuringCharacter: "*",
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              // prefix: Icon(Icons.email),
              prefixIcon: const Icon(Icons.password),
              suffixIcon: const Icon(Icons.remove_red_eye),
              label: const Text("Password"),
              hintText: "Password",
              error: passwordError.isNotEmpty ? Text(passwordError) : null,
              // fillColor: Colors.blue,
              // filled: true,
            ),
          ),
          Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't Have an account ?",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (ctx) {
                        return Page7();
                      },
                    ),
                  );
                },
                child: Text(
                  "Sign up here",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue.shade800,
                  ),
                ),
              )
            ],
          ),
          Gap(200),
          Center(
            child: Container(
              width: 380,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ElevatedButton(
                child: Text("LOGIN"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  String email = emailController.text;
                  String password = passwordController.text;

                  if (email.isEmpty) {
                    emailError = "Iltimos email kiriting";
                  } else if (!email.contains("@")) {
                    emailError = "Iltimos to'g'ri email kiriting";
                  } else {
                    emailError = "";
                  }
                  if (password.isEmpty) {
                    passwordError = "Iltimos password kiriting";
                  } else {
                    passwordError = "";
                  }

                  if (email.isNotEmpty && password.isNotEmpty) {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return Page11();
                        },
                      ),
                    );
                  }
                  setState(() {});
                },
              ),
            ),
          ),
          Gap(15),
          const Image(
            image: AssetImage("assets/app_images/apple.png"),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Teerms of Use ",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "By Continuing you can log in",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
