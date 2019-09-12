import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.interpretation, this.bmiResult, this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text('Your Results'),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              bgColor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(resultText, style: kResultTypeStyle),
                  Text(bmiResult, style: kResultTextStyle),
                ],
              ),
            ),
          ),
          Expanded(
            child: Text(
              interpretation,
              style: kSubtitleTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Text(
              'You have a normal body weight. Good job !',
              style: kInfo,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
              child: BottomButton(
            buttonTitle: 'SAVE',
            onTap: () {
              print('save');
            },
          ))
        ],
      ),
    );
  }
}
