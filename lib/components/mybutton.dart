import 'package:flutter/material.dart';
import '../constants.dart';


class button extends StatelessWidget {
  const button({
    Key? key, required this.text
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Center(child: Text(text,
      style: kLargButtonTextStyle,)),
      width: double.infinity,
      height: kbuttonHeight,
      color: kbuttonColor,
    );
  }
}
