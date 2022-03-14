import 'package:flutter/material.dart';

const textStyle =  TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);
const boxHeight = 15.0;
const iconHeight = 80.0;



class iconContent extends StatelessWidget {
  final IconData myicon;
  final String lable;
  iconContent(this.myicon, this.lable);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(myicon,
              size: iconHeight),
          const SizedBox(
            height: boxHeight,
          ),
          Text(lable,
              style: textStyle
          )
        ]
    );
  }
}