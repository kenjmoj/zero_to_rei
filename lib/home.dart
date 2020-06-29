import 'package:flutter/material.dart';
import 'package:numerictokanji/convert_num.dart';
import 'package:numerictokanji/number_pad.dart';
import 'package:numerictokanji/style_constants.dart';
import 'package:numerictokanji/main_label.dart';
import 'package:numerictokanji/sub_label.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String numLabel = '';
  String wordLabel = '';

  void butPressed(String pressed) {
    //todo: delete button
    if (pressed == 'AC') {
      setState(() {
        numLabel = '';
        wordLabel = '';
      });
    } else {
      setState(() {
        if (numLabel == '0') {
          numLabel = '$pressed';
        } else {
          numLabel = '$numLabel$pressed';
        }
        wordLabel = ConvertNum.convert(double.parse(numLabel));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: MainLabel(
                wordLabel: wordLabel,
              ),
            ),
            Expanded(
              flex: 1,
              child: SubLabel(
                numLabel: numLabel,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              flex: 6,
              child: NumberPad(
                function: butPressed,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
