import 'package:flutter/material.dart';
import 'package:my_bmi_calculator/mycards.dart';
import 'constants.dart';
import 'mybutton.dart';


class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

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
           Container(
            child: const Text('Your Result',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
          Expanded(
            child: mycards(colour: kactivCardColour, cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: const [
                  SizedBox(width: double.infinity,),
                  Text('OVERWEIGHT',
                 style: TextStyle(
                   fontSize: 20.0,
                   fontWeight: FontWeight.bold,
                   color: Colors.greenAccent,
                 ),),
                  Text('26.7',
                 style: TextStyle(
                   fontSize: 80.0,
                   fontWeight: FontWeight.bold,
                   color: Colors.blue,
                 ),
                 ),
                 Padding(
                   padding: EdgeInsets.all(18.0),
                   child: Text('You have a higher than normal body weight. Try to exercise more.',
                   style: TextStyle(
                     letterSpacing: 2.0,
                     fontSize: 17.0,
                   ),
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
