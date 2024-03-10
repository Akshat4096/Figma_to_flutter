import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return   InkWell(
      onTap: (){},
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
          colors: [Color(0xfff8658E8),Color(0xfff4718AD)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
            borderRadius: BorderRadius.only(
                topRight:  Radius.circular(10),
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),

        ),
        child: SizedBox(
          height: 60,
          width: 380,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(" PROCEED",style: TextStyle(
                  fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
              ),
              SizedBox(width: 5,),
              Icon(Icons.arrow_forward_ios,
                size: 18,
              weight: 20,
              color: Colors.white,)
            ],
          ),
        ),
      ),
    );
  }
}
