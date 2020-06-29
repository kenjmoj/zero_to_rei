import 'package:flutter/material.dart';
import 'package:numerictokanji/style_constants.dart';

//todo: format number with comma
class SubLabel extends StatelessWidget {
  SubLabel({@required this.numLabel});

  final String numLabel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15.0, right: 15.0),
      color: kPrimaryColor,
      width: 350.0,
      alignment: Alignment.centerRight,
      child: Text(
        numLabel,
        style: TextStyle(
          color: Color(0xFFf2f6f5),
        ),
      ),
    );
  }
}
