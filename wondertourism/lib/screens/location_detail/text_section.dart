import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:wondertourism/style.dart';

class TextSection extends StatelessWidget {
  final String _title;
  final String _body;
  static const double _hpad = 16.0;

  TextSection(this._title, this._body);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(_hpad, 32.0, _hpad, 4.0),
            child: Text(_title, style: const TextStyle( fontFamily: FontNameDefault, fontSize: MediumTextStyle, fontWeight: FontWeight.w600 )),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hpad, 10.0, _hpad, _hpad),
            child: Text(_body, style: const TextStyle( fontFamily: FontNameDefault, fontSize: BodyTextStyle, fontWeight: FontWeight.w300 )),
          ),
        ],
    );
  }
  
}