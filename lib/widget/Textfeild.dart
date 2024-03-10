import 'package:flutter/material.dart';


class T_Field extends StatelessWidget{

  String title;
  String hinttext;
  IconData icon ;
  Color color;
  T_Field({required this.hinttext,required this.title ,required this.icon,required this.color});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              this.title,
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText:this.hinttext,
              suffixIcon: Icon(
                this.icon,
                color: this.color,),
            ),
          )
        ],
      ),
    );
  }

}
