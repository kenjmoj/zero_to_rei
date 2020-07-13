import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

class AboutThisApp extends StatelessWidget {
  AboutThisApp({
    @required this.appName,
    @required this.appSubName,
    @required this.version,
    @required this.privacyUrl,
    @required this.appLandingUrl,
    this.backgroundColor,
  });

  final String appName;
  final String appSubName;
  final String version;
  final String privacyUrl;
  final String appLandingUrl;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: backgroundColor,
      contentPadding: EdgeInsets.only(top: 30.0, bottom: 10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            15.0,
          ),
        ),
      ),
      content: Container(
        height: 250.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: '$appName\n',
                            style: TextStyle(
                              fontSize: 28.0,
                            ),
                          ),
                          TextSpan(
                            text: '$appSubName\n\n',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                          TextSpan(
                            text: 'Version $version\n',
                            style: TextStyle(color: Colors.grey),
                          ),
                          TextSpan(
                            text: 'Privacy Policy\n',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                launcher.launch(privacyUrl);
                              },
                          ),
                          TextSpan(
                            text: 'Licenses\n\n',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                showLicensePage(context: context);
                              },
                          ),
                          TextSpan(
                            text: 'Visit ',
                          ),
                          TextSpan(
                            text: 'here',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                launcher.launch(appLandingUrl);
                              },
                          ),
                          TextSpan(
                            text: ' for more information',
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  FlatButton(
//                    padding: EdgeInsets.all(0.0),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Close',
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
