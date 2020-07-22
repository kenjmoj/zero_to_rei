import 'package:flutter/material.dart';
import 'package:numerictokanji/Model/convert_num.dart';
import 'package:numerictokanji/Widgets/number_pad.dart';
import 'package:numerictokanji/Widgets/main_label.dart';
import 'package:numerictokanji/Widgets/sub_label.dart';
import 'package:neumorphic/neumorphic.dart';
import 'package:numerictokanji/Widgets/about_this_app.dart';

class Home extends StatefulWidget {
  Home(this.toggleTheme);

  final Function toggleTheme;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String numLabel = '';
  String wordLabel = '';
  int switchValue = 1;

  String appName = 'ZeroRei';
  String appSubName = 'ゼロ零:漢数字変換ツール';
  String version = '1.0.0 (5)';

  void butPressed(String pressed) {
    switch (pressed) {
      case 'AC':
        setState(() {
          numLabel = '';
          wordLabel = ConvertNum.clear();
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

            wordLabel = ConvertNum.convert(int.parse(numLabel));
          }
        });
        break;

      default:
        if (numLabel.length == 15) {
//          print('not supported');
        } else {
          setState(() {
            if (numLabel == '0') {
              numLabel = '$pressed';
            } else {
              numLabel = '$numLabel$pressed';
            }

            wordLabel = ConvertNum.convert(int.parse(numLabel));
          });
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                height: 0.0,
              ),
              Expanded(
                flex: 6,
                child: NumberPad(
                  function: butPressed,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    flex: 9,
                    child: Container(
                      padding: EdgeInsets.only(left: 120.0, right: 80.0),
                      width: 10.0,
                      child: NeuSwitch<int>(
                        thumbColor: Theme.of(context).buttonColor,
                        backgroundColor: Theme.of(context).primaryColor,
                        groupValue: switchValue,
                        children: {
                          0: Text('Light',
                              style: Theme.of(context).textTheme.bodyText2),
                          1: Text('Dark',
                              style: Theme.of(context).textTheme.bodyText2),
                        },
                        onValueChanged: (val) {
                          setState(
                            () {
                              if (switchValue != val) {
                                switchValue = val;
                                widget.toggleTheme();
                              }
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AboutThisApp(
                              appName: appName,
                              appSubName: appSubName,
                              version: version,
                              privacyUrl:
                                  'https://shonanappfactory.co/zerorei-privacypolicy/',
                              appLandingUrl:
                                  'https://shonanappfactory.co/zerorei-kansujiconverter/',
                              backgroundColor: Color(0xFF4A514E),
                            );
                          },
                        );
                      },
                      icon: Icon(
                        Icons.info_outline,
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
