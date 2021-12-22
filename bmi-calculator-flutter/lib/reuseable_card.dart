import 'package:flutter/material.dart';



class ReuseabledCard extends StatelessWidget {

  ReuseabledCard({@required this.color , this.childWeight , this.onTap});

  final Color color; 
  final Widget childWeight;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:  onTap,
      child: Container(
        // child: Text('1'),
        child: childWeight,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
