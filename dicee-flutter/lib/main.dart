import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.black,
              padding: EdgeInsets.all(16),
            ),
            child: Image.asset("./images/dice1.png"),
            onPressed: () {
              print('pressed');
            },
          ),
        ),
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.black,
              padding: EdgeInsets.all(16),
            ),
            onPressed: (){},
            child: Image.asset("./images/dice1.png"),
          ),
        ),
      ],
    ));
  }
}
