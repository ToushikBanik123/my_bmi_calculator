import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'mycards.dart';
import 'iconContent.dart';
import 'mybutton.dart';
import 'constants.dart';



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
  int hight = 160;
  int weight = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kappBarColor,
        title: const Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                    colour: (selectedGender == Gender.male ? kactivCardColour : kinactiveCardColour),
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
                    colour: (selectedGender == Gender.female ? kactivCardColour : kinactiveCardColour),
                    cardChild: iconContent(
                  FontAwesomeIcons.venus,
                  'FEMALE',
                )
                ),
              ),
              ),
            ],
          )),
          Expanded(child: mycards(
              colour: kactivCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  const Text('HEIGHT',
                      style: ktextStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children:  [
                      Text(hight.toString(),
                      style: kNumberTextStyle),
                      const Text('CM',
                      style: ktextStyle,),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: const Color(0xFF8D8E98),
                      activeTrackColor: Colors.white,
                      thumbColor: const Color(0xFFEB1555),
                      overlayColor: const Color(0x29EB1555),
                      thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: const RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(value: hight.toDouble(),
                      onChanged: (double newValue){
                        setState(() {
                          hight = newValue.round();
                        });
                      },
                      min: kminSliderHight,
                      max: kmaxSliderHight,

                    ),
                  ),

                ],
              )
          ),
          ),
          Expanded(child: Row(
            children: [
              Expanded(child: mycards(
                  colour: kactivCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('WEIGHT',
                      style: ktextStyle,),
                      Text(weight.toString(),
                      style: kNumberTextStyle,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Expanded(child: RoundIconButton()),
                          Expanded(child: RoundIconButton()),
                        ],
                      ),
                    ],
                  )
              ),
              ),
              Expanded(child: mycards(
                  colour: kactivCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('WEIGHT',
                        style: ktextStyle,),
                      Text(weight.toString(),
                        style: kNumberTextStyle,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Expanded(child: RoundIconButton()),
                          Expanded(child: RoundIconButton()),
                        ],
                      ),
                    ],
                  )
              ),
              ),
            ],
          ),
          ),
          const button(),
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {  },
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}




