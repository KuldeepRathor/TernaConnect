import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:terna_connect/registration/login_page.dart';
import '../utilities/rounded_button.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);
  static const String id = 'login_screen';

  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
//  bool showSpinner = false;

  @override
  Widget build(BuildContext context) {
    String email='',pass='';
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme:const IconThemeData(
          color: CupertinoColors.black,
        ),
        title: const Text(
          'Register Page',
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
              // Container(
              //   margin: const EdgeInsets.only(left: 0, top: 150),
              //   child: const Center(
              //     child: Padding(
              //       padding: EdgeInsets.all(8.0),
              //       child: Text(
              //         'Create New Account',
              //         style: TextStyle(
              //           //fontWeight: FontWeight.bold,
              //           fontSize: 30,
              //           color: Colors.white,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              Hero(
                tag: 'logo',
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 300.0,
                    child: Image.asset('images/LOGO 2.png'),
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
                      style: const TextStyle(),
                      obscureText: false,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: "Enter Your Name",
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
                        email = value;
                      },
                      style: const TextStyle(),
                      obscureText: false,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: "Enter Your Email",
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
                        pass = value;
                      },
                      style: const TextStyle(),
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: "Create a Strong Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    RoundedButton(
                        title: 'Register',
                        colour: Colors.blueAccent,
                        onPressed: ()async {

                          try {
                            UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                                email: email,
                                password: pass
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyLogin()),
                            );

                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'weak-password') {
                              print('The password provided is too weak.');
                              //ToDo: create a popup message
                            } else if (e.code == 'email-already-in-use') {
                              print('The account already exists for that email.');
                              showDialog(
                                context: context,
                                builder: (ctx) => AlertDialog(
                                  title: Text("Check Email",style: TextStyle(color: Colors.red),),
                                  content: Text("The account already exists for that email.",style: TextStyle(fontSize:18),),
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
                          } catch (e) {
                            print(e);
                          }

                        }),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0, left: 8.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MyLogin()),
                              );
                            },
                            child: const Text(
                              'Log In',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    )
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
