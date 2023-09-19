
import 'package:flutter/material.dart';
import 'package:project1/Storages%20in%20Flutter/sqf%20lite%20operation/New%20folder/screens/login.dart';
import 'package:project1/Storages%20in%20Flutter/sqf%20lite%20operation/New%20folder/screens/signup.dart';

class Login_Reg extends StatefulWidget {
  const Login_Reg({Key? key}) : super(key: key);

  @override
  State<Login_Reg> createState() => _Login_RegState();
}

class _Login_RegState extends State<Login_Reg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 80.0),
              child: Text("Hey!!!",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            ),
            const Padding(

              padding: EdgeInsets.all(25.0),
              child: Text(
                "Automatic identity verification which enable you to verify your identity",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey),),
            ),
            // Image.network('https://t3.ftcdn.net/jpg/03/39/70/90/360_F_339709048_ZITR4wrVsOXCKdjHncdtabSNWpIhiaR7.jpg'),
            Icon(Icons.person, size: 180,),

            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue[600]),
                    minimumSize: MaterialStateProperty.all(Size(330, 50)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> Login_Form()));
                  }, child: Text("Login",style: TextStyle(color: Colors.white),)),
            ),
            SizedBox(height: 30,),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.yellow),
                    minimumSize: MaterialStateProperty.all(Size(330, 50)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),

                        )
                    )
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Signup_Form()));
                }, child: Text("Sign Up",style: TextStyle(color: Colors.white),)),
          ],
        ),
      ),
    );
  }
}