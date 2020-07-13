import 'package:flutter/material.dart';
import 'package:span_builder/span_builder.dart';

class MainLabel extends StatelessWidget {
  MainLabel({@required this.wordLabel});

  final String wordLabel;

  List<InlineSpan> _styleText(String string) {
    return SpanBuilder(string)
        .apply(TextSpan(text: "万", style: TextStyle(color: Color(0xFF96514d))))
        .apply(TextSpan(text: "億", style: TextStyle(color: Color(0xFFBC64A4))))
        .apply(TextSpan(text: "兆", style: TextStyle(color: Color(0xFF88A375))))
        .apply(TextSpan(text: "京", style: TextStyle(color: Color(0xFFF4B82E))))
        .apply(TextSpan(text: "垓", style: TextStyle(color: Color(0xFFEE827C))))
        .build();
  }

  RichText _styledLabel(String stringToStyle, BuildContext context) {
//    print(stringToStyle.length);
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontFamily: 'Noto Serif JP',
          fontSize: stringToStyle.length > 24 ? 36 : 38,
          fontWeight: FontWeight.w600,
          color: Theme.of(context).secondaryHeaderColor,
        ),
        children: _styleText(stringToStyle),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).accentColor),
        color: Theme.of(context).primaryColor,
      ),
      padding: EdgeInsets.only(left: 15.0, right: 0.0),
      width: 350.0,
      alignment: Alignment.bottomRight,
      child: _styledLabel(wordLabel, context),
    );
  }
}
