import 'package:assignment/Login_and_Signup/home_page.dart';
import 'package:assignment/Login_and_Signup/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var formkey = GlobalKey<FormState>();
  bool passvisibility = true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Form(
        child: Padding(
          padding: EdgeInsets.all(35.0),
          child: Center(
            child: Container(
              height: 700,
              color: Colors.blue[200],
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.login,size: 150,color: Colors.blue,),
                      
                      SizedBox(height: 30),
                
                      Text("Login",style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
                      SizedBox(height: 20),
                      Text("Welcome back! Login with your credentials",style: TextStyle(fontSize: 15)),
                      SizedBox(height: 50),
                
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Email ID",
                          prefixIcon: Icon(Icons.people),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)
                          ),
                        ),
                            validator: (uname) {
                            if (uname!.isEmpty || !uname.contains('@')) {
                              return "Fields are empty or invalid";
                            } else {
                              return null;
                            }
                          },
                      ),
                
                      SizedBox(height: 20),
                  
                      TextFormField(
                        obscureText: passvisibility,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon: Icon(Icons.visibility_off_sharp),
                          suffixIcon:
                          IconButton(onPressed: (){
                            setState(() {
                              if(passvisibility == true){
                                passvisibility = false;
                              }else{
                                passvisibility = true;
                              }
                            });
                          }, 
                          icon: Icon(
                            passvisibility == true?
                            Icons.visibility_off_sharp :
                            Icons.visibility
                          ), 
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)
                          )
                        ),
                           validator: (pass) {          
                            if (pass!.isEmpty || pass.length < 6) {
                              return "Fields are empty or password length must be >=6";
                            } else {
                              return null;
                            }
                          },
                      ),
                  
                      SizedBox(height: 20,),
                  
                      ElevatedButton(onPressed: (){
                        final valid = formkey.currentState!.validate();
                        if(valid){
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => HomePage() )
                          );
                        }else{
                          Fluttertoast.showToast(
                              msg: "Invalid Username or Password",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.TOP,
                              // timeInSecForIosWeb: 1,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0);
                        }
                      }, child: Padding(
                        padding: const EdgeInsets.only(left: 60, right: 60, top: 10, bottom: 10),
                        child: Text("Login"),
                      )),

                      SizedBox(height: 10),
                  
                      TextButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUp()));
                      }, child: Text("Dont have an account? Sign Up"))
                          
                
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}