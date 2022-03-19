import 'package:flutter/material.dart';
import 'package:my_bmi_calculator/components/mycards.dart';
import '../constants.dart';
import '../components/mybutton.dart';


class ResultPage extends StatelessWidget {
  const ResultPage({Key? key,required this.calculateBMI , required this.getResult , required this.getInterpritation}) : super(key: key);

  final String calculateBMI;
  final String getResult;
  final String getInterpritation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kappBarColor,
        title: const Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
           const Expanded(
             flex: 1,
            child: Text('Your Result',
            style: ktitleTextStyle,
            ),
          ),
          Expanded(
            flex: 10,
            child: mycards(colour: kactivCardColour, cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               crossAxisAlignment: CrossAxisAlignment.center,
               children:  [
                  SizedBox(width: double.infinity,),
                   Text(getResult.toUpperCase(),
                 style: kResultTextStyle ),
                  Text(calculateBMI,
                 style: kBMITextStyle,
                 ),
                 Padding(
                   padding: const EdgeInsets.all(18.0),
                   child: Text(getInterpritation,
                   textAlign: TextAlign.center,
                   style: kBodyTextStyle,
                   ),
                 ),
               ],
            ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
              child: const button(text: 'RE - CALCULATE'))
        ],
      )
    );
  }
}
