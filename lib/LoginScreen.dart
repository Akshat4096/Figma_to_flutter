import 'package:figmaloginsignup/widget/Textfeild.dart';
import 'package:figmaloginsignup/widget/Textwidget.dart';
import 'package:figmaloginsignup/widget/loginButton.dart';
import 'package:flutter/material.dart';

import 'SignupScreen.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xff4718AD),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/3,
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(
                  top: 1,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Image.asset(
                          'assest/logintoplogo.png',
                          fit: BoxFit.cover,
                          height: 260,
                          width: 200,),
                      )
                  ),
                ) ,
                Positioned(
                  top: 90,
                  left: 20,
                  child: Image.asset('assest/textlogin.png'),
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
                width: double.infinity,
                // height: MediaQuery.of(context).size.height/4.5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30) , topLeft: Radius.circular(30)),
                ),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Textinfo(text: 'Log In',),
                      const SizedBox(height: 5,),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            T_Field(
                                hinttext: 'Johnsondoe@nomail.com',
                                title: "Email",
                                icon: Icons.verified,
                                color: Colors.green
                            ),
                            const SizedBox(height: 10,),
                            T_Field(
                                hinttext: '****************',
                                title: "Password",
                                icon: Icons.remove_red_eye,
                                color: Colors.black
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: TextButton(onPressed: (){},
                                  child: const Text(
                                'Need help?',
                                    style: TextStyle(
                                      color: Colors.black
                                    ),
                              )),
                            ) ,
                           LoginButton(),
                            SizedBox(height: 20,),
                            Center(child: Text('Or Log In with')),
                            SizedBox(height: 20,),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                  child: Image.asset(
                                      'assest/bottomlogo.png',
                                    fit: BoxFit.fill,
                                    height: 50,
                                    width: 200,
                                  )
                              ),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Newbie?',style: TextStyle(fontSize: 15),),
                                TextButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen(),));
                                },
                                    child: Text(
                                        'Create Account',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xfff4718AD),
                                      ),
                                    ))
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
          )
        ],
      )
    );
  }
}
