import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // ignore: non_constant_identifier_names
  ReusableCard({@required this.myColor, this.CardChild, this.onPress});

  final Color myColor;

  // ignore: non_constant_identifier_names
  final Widget CardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        child: CardChild,
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: myColor,
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Widget>('CardChild', CardChild));
  }
}