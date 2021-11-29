import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:terna_connect/notice_board.dart';
import 'package:terna_connect/register_page.dart';
import 'rounded_button.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    String R_email='',R_pass='';
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme:const IconThemeData(
          color: CupertinoColors.black,
        ),
        title: const Text(
          'Login Page',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 0, top: 180),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 28.0),
                    child: Text(
                      'Please Enter your Terna credentials:',
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                margin: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: (value){
                        R_email=value;
                      },
                      style: const TextStyle(),
                      obscureText: false,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: "Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      onChanged: (value){
                        R_pass = value;
                      },
                      style: const TextStyle(),
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    RoundedButton(
                        title: 'Log In',
                        colour: Colors.black54,
                        onPressed: ()async {
                          try {
                            UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                                email: R_email,
                                password: R_pass
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const NoticeBoard()),
                            );
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'user-not-found') {
                              print('No user found for that email.');
                             /* Fluttertoast.showToast(
                                  msg: "  No User found for given email  ",
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.TOP,
                                  timeInSecForIosWeb: 3,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.red,
                                  fontSize: 16.0
                              );*/
                              showDialog(
                                context: context,
                                builder: (ctx) => AlertDialog(
                                  title: Text("Invalid Email",style: TextStyle(color: Colors.red),),
                                  content: Text("Please Check Entered Email Address",style: TextStyle(fontSize:18),),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(ctx).pop();
                                      },
                                      child: const Text("RETRY",
                                      style: TextStyle (
                                       color: Colors.lightBlue
                                      ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            } else if (e.code == 'wrong-password') {
                              print('Wrong password provided for that user.');
                              showDialog(
                                context: context,
                                builder: (ctx) => AlertDialog(
                                  title: Text("Invalid Password",style: TextStyle(color: Colors.red),),
                                  content: Text("Please Check the Password you Entered",style: TextStyle(fontSize:18),),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(ctx).pop();
                                      },
                                      child: const Text("RETRY",
                                        style: TextStyle (
                                            color: Colors.lightBlue
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }
                          }


                        }),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyRegister()),
                            );
                          },

                          child: const Text(
                            'Sign Up',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          //style: const ButtonStyle(),
                        ),
                        TextButton(
                          onPressed: () {

                          },
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
