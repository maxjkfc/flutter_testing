import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';


class BottomButton extends StatelessWidget {


  BottomButton({    
    @required this.onTap,
    @required this.buttonTitle,
  });
  

  final String buttonTitle  ;
  final Function onTap;


  @override
  Widget build(BuildContext context) {
    return Container(
      color: bContainerColor,
      margin: EdgeInsets.only(top: 10.0),
      padding: EdgeInsets.only(bottom: 10),
      width: double.infinity,
      height: bContainerHeight,
      child: RawMaterialButton(
          onPressed: onTap,
          child: Text(buttonTitle , style: klabelTextStyle),
          ),
    );
  }
}
