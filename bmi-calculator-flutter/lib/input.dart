import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseabledCard(),
                  ),
                Expanded(
                  child:ReuseabledCard(), 
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseabledCard(),
            ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseabledCard(),
                  ),
                Expanded(
                    child: ReuseabledCard(),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Theme(
        data: ThemeData(
          colorScheme: ColorScheme.dark(primary: Colors.purple),
        ),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }
}


class ReuseabledCard extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
                    // child: Text('1'),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  );
  }

}
