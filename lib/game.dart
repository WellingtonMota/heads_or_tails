import 'dart:math';

import 'package:flutter/material.dart';
import 'package:heads_or_tails/result.dart';

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  void _result() {
    var options = ['cara', 'coroa'];
    var number = Random().nextInt(options.length);
    var resultCoin = options[number];

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Result(resultCoin),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('images/logo.jpg'),
            GestureDetector(
              onTap: _result,
              child: Image.asset(
                'images/button.jpg',
                height: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
