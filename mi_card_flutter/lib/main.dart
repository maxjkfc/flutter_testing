import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// MyApp extends StatelessWidget

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/rich.png'),
              ),
              Text(
                ' I Am Rich',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Comforter',
                ),
              ),
              Text(
                'Relithe Shope',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.amberAccent,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Comforter',
                  letterSpacing: 4,
                ),
              ),
              Container(
                color : Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10 , horizontal: 20),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone_android,
                      size: 20.0,
                      color: Colors.teal.shade900,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      '+886 0982333241',
                      style: TextStyle(
                        fontFamily: "Source San Pro",
                        fontSize: 15.0,
                        color: Colors.teal.shade900,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 4,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color : Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10 , horizontal: 20),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(
                      Icons.mail_sharp,
                      size: 20.0,
                      color: Colors.teal.shade900,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'max210401@tyr-tech.com',
                      style: TextStyle(
                        fontFamily: "Source San Pro",
                        fontSize: 15.0,
                        color: Colors.teal.shade900,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 4,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
