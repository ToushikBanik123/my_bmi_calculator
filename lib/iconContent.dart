import 'package:flutter/material.dart';
import 'constants.dart';


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
              size: kiconHeight),
          const SizedBox(
            height: kboxHeight,
          ),
          Text(lable,
              style: ktextStyle
          )
        ]
    );
  }
}