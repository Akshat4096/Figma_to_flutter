import 'package:figmaloginsignup/LoginScreen.dart';
import 'package:figmaloginsignup/widget/Textfeild.dart';
import 'package:figmaloginsignup/widget/Textwidget.dart';
import 'package:figmaloginsignup/widget/loginButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff4718AD),
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/3.1,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                        padding: const EdgeInsets.fromLTRB(0, 70, 30, 0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Image.asset(
                            'assest/textsignup.png',
                            fit: BoxFit.cover,
                            ),
                        )
                    ),
                  ) ,
                  Positioned(
                    top: 40,
                    child: Image.asset('assest/Signuplogo.png'),
                  )
                ],
              ),
            ),
            Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft:  Radius.circular(30),
                        topRight: Radius.circular(30)
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Column(
                      children: [
                        Textinfo(text: 'Sign Up',),
                        const SizedBox(height: 3,),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              T_Field(
                                  hinttext: 'Johnson Doe',
                                  title: "Name",
                                  icon: Icons.verified,
                                  color: Colors.green
                              ),
                              // const SizedBox(height: 5,),
                              T_Field(
                                  hinttext: 'Johnsondoe@nomail.com',
                                  title: "Email",
                                  icon: Icons.verified,
                                  color: Colors.green
                              ),
                              // const SizedBox(height: 0,),
                              T_Field(
                                  hinttext: '****************',
                                  title: "Password",
                                  icon: Icons.remove_red_eye,
                                  color: Colors.black
                              ),
                              Row(
                                children: [
                                  Text('Yes, I agree to the'),
                                  TextButton(onPressed: (){},
                                      child: const Text(
                                        'Terms & Services',
                                        style: TextStyle(
                                            color: Colors.black,
                                          decoration: TextDecoration.underline,
                                        ),
                                      )),
                                ],
                              ) ,
                              SizedBox(
                                   height: 60,
                                  child: LoginButton()),
                              SizedBox(height: 10,),
                              Center(child: Text('Or Sign Up with')),
                              SizedBox(height: 10,),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                    child: Image.asset(
                                      'assest/bottomlogo.png',
                                      fit: BoxFit.fill,
                                      height: 40,
                                      width: 200,
                                    )
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Exiting User?',style: TextStyle(fontSize: 15),),
                                  TextButton(onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                                  },
                                      child: Text(
                                        'Log In',
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
