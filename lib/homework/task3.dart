import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Timer App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TimerScreen(),
    );
  }
}

class TimerScreen extends StatefulWidget {
  @override
  _TimerScreenState createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  late TextEditingController _controller;
  late Timer _timer;
  int _secondsLeft = 0;
  bool _isRunning = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void startTimer() {
    if (_controller.text.isNotEmpty && !_isRunning) {
      int seconds = int.parse(_controller.text);
      setState(() {
        _secondsLeft = seconds;
        _isRunning = true;
      });
      _timer = Timer.periodic(Duration(seconds: 1), (timer) {
        if (_secondsLeft > 0) {
          setState(() {
            _secondsLeft--;
          });
        } else {
          stopTimer();
        }
      });
    }
  }

  void stopTimer() {
    _timer.cancel();
    setState(() {
      _isRunning = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Timer App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Set Timer (seconds)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_isRunning) {
                  stopTimer();
                } else {
                  startTimer();
                }
              },
              child: Text(_isRunning ? 'Stop Timer' : 'Start Timer'),
            ),
            SizedBox(height: 20),
            Text(
              'Time Remaining: $_secondsLeft seconds',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
