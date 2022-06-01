import 'package:flutter/material.dart';
import 'package:randomizer/randomizer.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  var arr = [
    2,
    12,
    3,
    3,
    11,
    11,
    4,
    4,
    4,
    10,
    10,
    10,
    5,
    5,
    5,
    5,
    9,
    9,
    9,
    9,
    6,
    6,
    6,
    6,
    6,
    8,
    8,
    8,
    8,
    8,
    7,
    7,
    7,
    7,
    7,
    7
  ];

  Randomizer randomizer = Randomizer();

  @override
  Widget build(BuildContext context) {
    var gameArray = List.from(arr);
    gameArray.shuffle();

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                randomize(gameArray);
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                //   // randomize();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }

  void randomize(var gameArray) {
    return setState(() {
      // leftDiceNumber = Random().nextInt(6) + 1;
      // rightDiceNumber = Random().nextInt(6) + 1;
      var num = gameArray.removeLast();
      var gameArrayLength = gameArray.length;
      print("remaining:$gameArrayLength");
      var arrayLength = arr.length;
      print("remaining:$arrayLength");

      // gameArray.remove(num);
      print(num);

      // if (gameArray.isEmpty) {
      //   print("EMPTY");
      //   print(gameArray.length);
      //   print(arr.length);
      //   gameArray = List.castFrom(arr);

      //   print(gameArray.length);
      //   print(arr.length);
      // }

      if (num == 2) {
        leftDiceNumber = 1;
        rightDiceNumber = 1;
      } else if (num == 3) {
        leftDiceNumber = 1;
        rightDiceNumber = 2;
      } else if (num == 4) {
        leftDiceNumber = 1;
        rightDiceNumber = 3;
      } else if (num == 5) {
        leftDiceNumber = 2;
        rightDiceNumber = 3;
      } else if (num == 6) {
        leftDiceNumber = 2;
        rightDiceNumber = 4;
      } else if (num == 7) {
        leftDiceNumber = 2;
        rightDiceNumber = 5;
      } else if (num == 8) {
        leftDiceNumber = 3;
        rightDiceNumber = 5;
      } else if (num == 9) {
        leftDiceNumber = 5;
        rightDiceNumber = 4;
      } else if (num == 10) {
        leftDiceNumber = 6;
        rightDiceNumber = 4;
      } else if (num == 11) {
        leftDiceNumber = 5;
        rightDiceNumber = 6;
      } else if (num == 12) {
        leftDiceNumber = 6;
        rightDiceNumber = 6;
      }
    });
  }
}
