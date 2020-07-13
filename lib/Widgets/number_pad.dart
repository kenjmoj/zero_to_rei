import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';

class NumberPad extends StatelessWidget {
  NumberPad({this.function});
  final Function function;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: 350.0,
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
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  onPressed: () {
                    function('1');
                  },
                  child: Text(
                    '1',
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
              ),
              Container(
                width: 60.0,
                child: NeuButton(
                  decoration: NeumorphicDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  onPressed: () {
                    function('2');
                  },
                  child: Text(
                    '2',
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
              ),
              Container(
                width: 60.0,
                child: NeuButton(
                  decoration: NeumorphicDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  onPressed: () {
                    function('3');
                  },
                  child: Text(
                    '3',
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
              ),
              Container(
                width: 60.0,
                child: NeuButton(
                  decoration: NeumorphicDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  onPressed: () {
                    function('del');
                  },
                  child: Text(
                    'del',
                    style: Theme.of(context).textTheme.button,
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
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  onPressed: () {
                    function('4');
                  },
                  child: Text(
                    '4',
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
              ),
              Container(
                width: 60.0,
                child: NeuButton(
                  decoration: NeumorphicDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  onPressed: () {
                    function('5');
                  },
                  child: Text(
                    '5',
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
              ),
              Container(
                width: 60.0,
                child: NeuButton(
                  decoration: NeumorphicDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  onPressed: () {
                    function('6');
                  },
                  child: Text(
                    '6',
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
              ),
              Container(
                width: 60.0,
                child: NeuButton(
                  decoration: NeumorphicDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  onPressed: () {
                    function('AC');
                  },
                  child: Text(
                    'AC',
                    style: Theme.of(context).textTheme.button,
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
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  onPressed: () {
                    function('7');
                  },
                  child: Text(
                    '7',
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
              ),
              Container(
                width: 60.0,
                child: NeuButton(
                  decoration: NeumorphicDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  onPressed: () {
                    function('8');
                  },
                  child: Text(
                    '8',
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
              ),
              Container(
                width: 60.0,
                child: NeuButton(
                  decoration: NeumorphicDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  onPressed: () {
                    function('9');
                  },
                  child: Text(
                    '9',
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
              ),
              Container(
                width: 60.0,
                child: NeuButton(
                  decoration: NeumorphicDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  onPressed: () {
                    function('0');
                  },
                  child: Text(
                    '0',
                    style: Theme.of(context).textTheme.button,
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
