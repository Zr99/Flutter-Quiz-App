import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText;
    if (resultScore < 8) {
      resultText = 'Nice Try!';
    } else if (resultScore < 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore < 16) {
      resultText = 'Noiseeee!';
    } else {
      resultText = ' Not good';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),

      TextButton(
        onPressed: resetHandler,
        child: Text('Restart'),
        style: TextButton.styleFrom(primary: Colors.orange),
      )
      // FlatButton(
      //   onPressed: resetHandler,
      //   child: Text('Restart'),
      //   color: Colors.blue,
      // )
    ]));
  }
}
