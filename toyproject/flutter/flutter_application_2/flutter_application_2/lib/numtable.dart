import 'package:flutter/material.dart';


class MyTable extends StatelessWidget {

  final color;
  final textColor;
  final buttonText;

  MyTable({this.color, this.textColor, this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          color: color,
          child: Center(child: Text(buttonText, style: TextStyle(color: textColor, fontSize: 36, fontFamily:'Caveat',),),
        ),
      ),
    ));
  }
}