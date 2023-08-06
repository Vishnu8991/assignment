import 'package:assignment/Login_and_Signup/login.dart';
import 'package:assignment/Login_and_Signup/sign_up.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: HomePage(),debugShowCheckedModeBanner: false));
}

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Container(
            height: 700,
            color: Colors.blue[300],
            child: Padding(
              padding: EdgeInsets.all(25.0),
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home,size: 190, color: Colors.blue[800],),
                  
                  SizedBox(height: 30,),
                  
                  Text("Hello There!",style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
                  
                  SizedBox(height: 10,),
                  
                  Text("Login / Sign Up ?", style: TextStyle(color: Colors.white, fontSize: 30),),
                  
                  SizedBox(height: 50,),
                  
                  
                  ElevatedButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login()));
                  }, child: Padding(
                    padding: const EdgeInsets.only(left: 60, right: 60, top: 10, bottom: 10),
                    child: Text("Login"),
                  )),
                      
                  SizedBox(height: 25,),
                  
                  ElevatedButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUp()));
                  }, child: Padding(
                    padding: const EdgeInsets.only(left: 60, right: 60, top: 10, bottom: 10),
                    child: Text("Sign Up"),
                  ),),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}