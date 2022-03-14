import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'mycards.dart';
import 'iconContent.dart';
import 'mybutton.dart';



const activCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const appBarColor = Color(0xFF0A0E21);
enum Gender{
  male,
  female,
  nil,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender = Gender.nil;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: const Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: GestureDetector(
                onTap: (){
                  setState(() {
                    selectedGender = Gender.male;
                  });
                },
                child: mycards(
                    colour: (selectedGender == Gender.male ? activCardColour : inactiveCardColour),
                    cardChild: iconContent(
                  FontAwesomeIcons.mars,
                  'MALE',
                )
                ),
              ),
              ),
              Expanded(child: GestureDetector(
                onTap: (){
                  setState(() {
                    selectedGender = Gender.female;
                }
                );},
                child: mycards(
                    colour: (selectedGender == Gender.female ? activCardColour : inactiveCardColour),
                    cardChild: iconContent(
                  FontAwesomeIcons.venus,
                  'FEMALE',
                )
                ),
              ),
              ),
            ],
          )),
          Expanded(child: GestureDetector(
            onTap: (){
              setState(() {
                selectedGender = Gender.female;
              }
              );},
            child: mycards(
                colour: (selectedGender == Gender.female ? activCardColour : inactiveCardColour),
                cardChild: iconContent(
                  FontAwesomeIcons.venus,
                  'FEMALE',
                )
            ),
          ),
          ),
          Expanded(child: Row(
            children: [
              Expanded(child: GestureDetector(
                onTap: (){
                  setState(() {
                    selectedGender = Gender.male;
                  });
                },
                child: mycards(
                    colour: (selectedGender == Gender.male ? activCardColour : inactiveCardColour),
                    cardChild: iconContent(
                      FontAwesomeIcons.mars,
                      'MALE',
                    )
                ),
              ),
              ),
              Expanded(child: GestureDetector(
                onTap: (){
                  setState(() {
                    selectedGender = Gender.female;
                  }
                  );},
                child: mycards(
                    colour: (selectedGender == Gender.female ? activCardColour : inactiveCardColour),
                    cardChild: iconContent(
                      FontAwesomeIcons.venus,
                      'FEMALE',
                    )
                ),
              ),
              ),
            ],
          ),
          ),
          const button()
        ],
      ),
    );
  }
}





