import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// MyApp extends StatelessWidget

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold( //骨幹
        backgroundColor: Colors.teal,
        body: SafeArea( // 為了保持元件處於安全區塊內
          child: Column( // 直行
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
              SizedBox( // 中間區隔線
                  height: 20.0,
                  width: 150,
                  child: Divider(color: Colors.white),
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
              SizedBox(
                  height: 20.0,
                  width: 150,
                  child: Divider(color: Colors.white),
              ),
              Card( // 白色圓弧的區塊卡片t
                margin: EdgeInsets.symmetric(vertical: 10 , horizontal: 20),
                child: ListTile(
                  leading: Icon(
                      Icons.phone_android,
                      size: 20.0,
                      color: Colors.teal.shade900,
                    ),
                  title: Text(
                      '+886 0982333241',
                      style: TextStyle(
                        fontFamily: "Source San Pro",
                        fontSize: 15.0,
                        color: Colors.teal.shade900,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 4,
                      ),
                    ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10 , horizontal: 20),
                child: ListTile(
                  leading: Icon(
                      Icons.email,
                      size: 20.0,
                      color: Colors.teal.shade900,
                    ),
                  title: Text(
                      'max210401@tyr-tech.com',
                      style: TextStyle(
                        fontFamily: "Source San Pro",
                        fontSize: 15.0,
                        color: Colors.teal.shade900,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 4,
                      ),
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
