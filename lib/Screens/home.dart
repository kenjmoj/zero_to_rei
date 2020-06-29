import 'package:flutter/material.dart';
import 'package:numerictokanji/Model/convert_num.dart';
import 'package:numerictokanji/Widgets/number_pad.dart';
import 'package:numerictokanji/style_constants.dart';
import 'package:numerictokanji/Widgets/main_label.dart';
import 'package:numerictokanji/Widgets/sub_label.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String numLabel = '';
  String wordLabel = '';

  void butPressed(String pressed) {
    switch (pressed) {
      case 'AC':
        setState(() {
          numLabel = '';
          wordLabel = '';
        });
        break;
      case 'del':
        setState(() {
          if (numLabel.length == 0) {
          } else if (numLabel.length == 1) {
            setState(() {
              numLabel = '';
              wordLabel = '';
            });
          } else {
            numLabel = numLabel.substring(0, numLabel.length - 1);
            wordLabel = ConvertNum.convert(double.parse(numLabel));
          }
        });
        break;

      default:
        setState(() {
          if (numLabel == '0') {
            numLabel = '$pressed';
          } else {
            numLabel = '$numLabel$pressed';
          }
          wordLabel = ConvertNum.convert(double.parse(numLabel));
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(),
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 4,
                child: MainLabel(
                  wordLabel: wordLabel,
                ),
              ),
              SizedBox(
                height: 20.0,
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
      ),
    );
  }
}
