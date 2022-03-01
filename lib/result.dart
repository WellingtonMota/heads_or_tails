import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  // const Result({Key? key}) : super(key: key);

  String valueCoin;
  Result(this.valueCoin);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    var imagePath = 'images/${widget.valueCoin}.jpeg';

    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              imagePath,
              height: 200,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                'images/back_button.png',
                height: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
