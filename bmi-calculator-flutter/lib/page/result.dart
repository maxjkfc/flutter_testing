import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmi,
      @required this.bmiResult,
      @required this.bmiInterpretation});
  final String bmi;
  final String bmiResult;
  final String bmiInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              decoration: BoxDecoration(
                color: activedCardColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(this.bmiResult.toUpperCase(),
                      style: kBMIMessageTextStyle),
                  Text(this.bmi, style: kBMINumberTextStyle),
                  Text(
                    this.bmiInterpretation,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RE-CALCULATE3'),
          // Expanded(
          // flex: 1,
          // child: Container(
          // color: bContainerColor,
          // // height: bContainerHeight,
          // child: RawMaterialButton(
          // onPressed: () {
          // Navigator.pop(context);
          // },
          // child: Text('RE-CALCULATOR', style: klabelTextStyle),
          // ),
          // ),
          // ),
        ],
      ),
    );
  }
}
