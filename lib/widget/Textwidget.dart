import 'package:flutter/material.dart';

class Textinfo extends StatelessWidget {
  Textinfo({required this.text});
  String text ;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Text(
        this.text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 34,
        ),
      ),
    );
  }
}
