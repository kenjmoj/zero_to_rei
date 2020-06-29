import 'package:flutter/material.dart';
import 'package:numerictokanji/style_constants.dart';

class SubLabel extends StatelessWidget {
  SubLabel({@required this.numLabel});

  final String numLabel;

  //groups numbers with comma separator
  String _formatNum() => numLabel.replaceAllMapped(
      new RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => "${m[1]},");

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white12),
        color: kPrimaryColor,
      ),
      padding: EdgeInsets.only(left: 15.0, right: 15.0),
      width: 350.0,
      alignment: Alignment.centerRight,
      child: Text(
        _formatNum(),
        style: TextStyle(
          fontSize: 20.0,
          color: kTertiaryColor,
        ),
      ),
    );
  }
}
