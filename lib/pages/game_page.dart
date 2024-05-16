import 'dart:math';

import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});
  @override
  State<GamePage> createState() {
    return _GamePageState();
  }
}

class _GamePageState extends State<GamePage> {
  List<String> boxes = ['', '', '', '', '', '', '', '', ''];
  int counter = 0;
  String result = "";

  void onPressed(int index) {
    if (boxes[index].isEmpty && result.isEmpty) {
      boxes[index] = "X";
      checkWin();
      counter++;
      result = checkWin();

      if (counter < 9 && result != "X") {
        int randomNumber = Random().nextInt(9);

        while (boxes[randomNumber].isNotEmpty && counter < 9) {
          randomNumber = Random().nextInt(9);
        }
        boxes[randomNumber] = "O";
        counter++;

        result = checkWin();
      }

      setState(() {});

      if (result.isNotEmpty) {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (ctx) {
            return AlertDialog(
              title: Text("$result Yutdi!"),
              actions: [
                OutlinedButton.icon(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  label: const Text("Okay"),
                  icon: const Icon(
                    Icons.thumb_up,
                  ),
                )
              ],
            );
          },
        );
      }
    }
  }

  String checkWin() {
    if (boxes[0] == "X" && boxes[1] == "X" && boxes[2] == "X") {
      return "X";
    } else if (boxes[3] == "X" && boxes[4] == "X" && boxes[5] == "X") {
      return "X";
    } else if (boxes[6] == "X" && boxes[7] == "X" && boxes[8] == "X") {
      return "X";
    } else if (boxes[0] == "X" && boxes[3] == "X" && boxes[6] == "X") {
      return "X";
    } else if (boxes[1] == "X" && boxes[4] == "X" && boxes[7] == "X") {
      return "X";
    } else if (boxes[2] == "X" && boxes[5] == "X" && boxes[8] == "X") {
      return "X";
    } else if (boxes[0] == "X" && boxes[4] == "X" && boxes[8] == "X") {
      return "X";
    } else if (boxes[2] == "X" && boxes[4] == "X" && boxes[6] == "X") {
      return "X";
    }

    if (boxes[0] == "O" && boxes[1] == "O" && boxes[2] == "O") {
      return "O";
    } else if (boxes[3] == "O" && boxes[4] == "O" && boxes[5] == "O") {
      return "O";
    } else if (boxes[6] == "O" && boxes[7] == "O" && boxes[8] == "O") {
      return "O";
    } else if (boxes[0] == "O" && boxes[3] == "O" && boxes[6] == "O") {
      return "O";
    } else if (boxes[1] == "O" && boxes[4] == "O" && boxes[7] == "O") {
      return "O";
    } else if (boxes[2] == "O" && boxes[5] == "O" && boxes[8] == "O") {
      return "O";
    } else if (boxes[0] == "O" && boxes[4] == "O" && boxes[8] == "O") {
      return "O";
    } else if (boxes[2] == "O" && boxes[4] == "O" && boxes[6] == "O") {
      return "O";
    }

    return "";
  }

  void newGame() {
    boxes = ['', '', '', '', '', '', '', '', ''];
    counter = 0;
    result = "";
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          "Tic Tac Toe",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    onPressed(0);
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Text(boxes[0]),
                  ),
                ),
                InkWell(
                  onTap: () {
                    onPressed(1);
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Text(boxes[1]),
                  ),
                ),
                InkWell(
                  onTap: () {
                    onPressed(2);
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Text(boxes[2]),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    onPressed(3);
                  },
                  child: Container(
                    width: 100,
                    alignment: Alignment.center,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Text(boxes[3]),
                  ),
                ),
                InkWell(
                  onTap: () {
                    onPressed(4);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Text(boxes[4]),
                  ),
                ),
                InkWell(
                  onTap: () {
                    onPressed(5);
                  },
                  child: Container(
                    width: 100,
                    alignment: Alignment.center,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Text(boxes[5]),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    onPressed(6);
                  },
                  child: Container(
                    width: 100,
                    alignment: Alignment.center,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Text(boxes[6]),
                  ),
                ),
                InkWell(
                  onTap: () {
                    onPressed(7);
                  },
                  child: Container(
                    width: 100,
                    alignment: Alignment.center,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Text(boxes[7]),
                  ),
                ),
                InkWell(
                  onTap: () {
                    onPressed(8);
                  },
                  child: Container(
                    width: 100,
                    alignment: Alignment.center,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Text(boxes[8]),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: newGame,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                child: const Text(
                  "New Game",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}