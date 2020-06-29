import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';
import 'package:numerictokanji/style_constants.dart';

class NumberPad extends StatelessWidget {
  NumberPad({this.function});
  final Function function;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: 350.0,
//              color: Color(0xFF63707e),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 60.0,
                child: NeuButton(
                  padding: EdgeInsets.all(12.0),
                  decoration: NeumorphicDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  onPressed: () {
                    function('1');
                  },
                  child: Text(
                    '1',
                    style: kButtonLabel,
                  ),
                ),
              ),
              Container(
                width: 60.0,
                child: NeuButton(
                  decoration: NeumorphicDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  onPressed: () {
                    function('2');
                  },
                  child: Text(
                    '2',
                    style: kButtonLabel,
                  ),
                ),
              ),
              Container(
                width: 60.0,
                child: NeuButton(
                  decoration: NeumorphicDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  onPressed: () {
                    function('3');
                  },
                  child: Text(
                    '3',
                    style: kButtonLabel,
                  ),
                ),
              ),
              Container(
                width: 60.0,
                child: NeuButton(
                  decoration: NeumorphicDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  onPressed: () {
                    function('del');
                  },
                  child: Text(
                    'del',
                    style: kButtonLabel,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 60.0,
                child: NeuButton(
                  decoration: NeumorphicDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  onPressed: () {
                    function('4');
                  },
                  child: Text(
                    '4',
                    style: kButtonLabel,
                  ),
                ),
              ),
              Container(
                width: 60.0,
                child: NeuButton(
                  decoration: NeumorphicDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  onPressed: () {
                    function('5');
                  },
                  child: Text(
                    '5',
                    style: kButtonLabel,
                  ),
                ),
              ),
              Container(
                width: 60.0,
                child: NeuButton(
                  decoration: NeumorphicDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  onPressed: () {
                    function('6');
                  },
                  child: Text(
                    '6',
                    style: kButtonLabel,
                  ),
                ),
              ),
              Container(
                width: 60.0,
                child: NeuButton(
                  decoration: NeumorphicDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  onPressed: () {
                    function('AC');
                  },
                  child: Text(
                    'AC',
                    style: kButtonLabel,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 60.0,
                child: NeuButton(
                  decoration: NeumorphicDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  onPressed: () {
                    function('7');
                  },
                  child: Text(
                    '7',
                    style: kButtonLabel,
                  ),
                ),
              ),
              Container(
                width: 60.0,
                child: NeuButton(
                  decoration: NeumorphicDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  onPressed: () {
                    function('8');
                  },
                  child: Text(
                    '8',
                    style: kButtonLabel,
                  ),
                ),
              ),
              Container(
                width: 60.0,
                child: NeuButton(
                  decoration: NeumorphicDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  onPressed: () {
                    function('9');
                  },
                  child: Text(
                    '9',
                    style: kButtonLabel,
                  ),
                ),
              ),
              Container(
                width: 60.0,
                child: NeuButton(
                  decoration: NeumorphicDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  onPressed: () {
                    function('0');
                  },
                  child: Text(
                    '0',
                    style: kButtonLabel,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
