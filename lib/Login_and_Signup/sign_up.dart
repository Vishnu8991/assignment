import 'package:assignment/Login_and_Signup/home_page.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  var formkey = GlobalKey<FormState>();
  bool passvisibility1 = true;
  bool passvisibility2 = true;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blue[100],
      body: Form(
        child: Center(
          child: Padding(
            padding:  EdgeInsets.all(35.0),
            child: Container(
              height: 700,
              color: Colors.blue[200],
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("image/form.png",height: 170, color: Colors.blue[700],),
                    SizedBox(height: 25),
                    Text("Sign Up",style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
                    SizedBox(height: 25),
                    Text("Create an Account, Its free",style: TextStyle(fontSize: 20),),
                    SizedBox(height: 25),
                    
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.people),
                        hintText: "Email Id",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)
                        )
                      ),
                         validator: (uname) {
                            if (uname!.isEmpty || !uname.contains('@')) {
                              return "Fields are empty or invalid";
                            } else {
                              return null;
                            }
                          },
                    ),

                    SizedBox(height: 15),
                        
                    TextFormField(
                       obscuringCharacter: '*',
                        obscureText: passvisibility1, // showpass = true initialy
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    if(passvisibility1 == true){
                                      passvisibility1 = false;
                                    }else{
                                      passvisibility1 = true;
                                    }
                                  });
                                },
                                icon: Icon(passvisibility1 == true
                                    ? Icons.visibility_off_sharp
                                    : Icons.visibility)),
                            hintText: "Password",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50))),
                        validator: (pass) {
                      
                          password = pass;   // value from first password field will stored to password
                      
                          if (pass!.isEmpty || pass.length < 6) {
                            return "Fields are empty or password length must be >=6";
                          } else {
                            return null;
                          }
                        },
                    ),
                    SizedBox(height: 15),
                        
                    TextFormField(
                      obscuringCharacter: '*',
                        obscureText: passvisibility2, // showpass = true initialy
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    if(passvisibility2 == true){
                                      passvisibility2 = false;
                                    }else{
                                      passvisibility2 = true;
                                    }
                                  });
                                },
                                icon: Icon(passvisibility2 == true
                                    ? Icons.visibility_off_sharp
                                    : Icons.visibility)),
                            hintText: "Confirm Password",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50))),
                        validator: (cpass) {
                          if (cpass!.isEmpty || cpass != password) {
                            return "Fields are empty or password does not match";
                          } else {
                            return null;
                          }
                        },
                    ),

                    SizedBox(height: 20),
                        
                    ElevatedButton(onPressed: (){
                      final valid = formkey.currentState!.validate();
                          if (valid) {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => HomePage()));
                          } else {
                            Fluttertoast.showToast(
                                msg: "Invalid Username or Password",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.TOP,
                                // timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                    }, child: Text("Sign up")),

                    TextButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login()));
                    }, child: Text("Have an Account? Login"))
                    
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}