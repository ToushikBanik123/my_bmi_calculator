import 'package:flutter/material.dart';
const buttonHeight = 80.0;
const buttonColor = Color(0xFFFB1555);



class button extends StatelessWidget {
  const button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: buttonHeight,
      color: buttonColor,
    );
  }
}
