
import 'package:flutter/material.dart';
import 'package:project1/Storages%20in%20Flutter/sqf%20lite%20operation/New%20folder/db/SQLHelper.dart';
import 'package:project1/Storages%20in%20Flutter/sqf%20lite%20operation/New%20folder/screens/admin.dart';
import 'package:project1/Storages%20in%20Flutter/sqf%20lite%20operation/New%20folder/screens/home.dart';
import 'package:project1/Storages%20in%20Flutter/sqf%20lite%20operation/New%20folder/screens/login_reg.dart';
import 'package:project1/Storages%20in%20Flutter/sqf%20lite%20operation/New%20folder/screens/signup.dart';

class Login_Form extends StatefulWidget {
  @override
  State<Login_Form> createState() => _Login_FormState();
}

class _Login_FormState extends State<Login_Form> {
  var formkey = GlobalKey<FormState>();
  final TextEditingController conemail = TextEditingController();
  final TextEditingController conpass = TextEditingController();

  void logincheck(String email, String password) async {
    ///Admin login
    if (email == 'admin@gmail.com' && password == '12345') {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => AdminHome()));
    } else {
      ///check if user already exit
      var data = await SQLHelper.CheckLogin(email, password);

      /// if user found in db
      if (data.isNotEmpty) {
        Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) => Home(
                      data: data,
                    )));
        print('Login Success');

        ///if user not fond in DB
      } else if (data.isEmpty) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login_Reg()));
        print('Login failed');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    bool hidepass = true;
    return Scaffold(
      appBar: AppBar(
        title: const Text("LOGIN PAGE"),
      ),
      body: Form(
        key: formkey,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
            "Login",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                controller: conemail,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.drive_file_rename_outline),
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                validator: (text) {
                  if (text!.isEmpty ||
                      !text.contains('@') ||
                      !text.contains(".")) {
                    return "Enter valid Email!!!";
                  }
                },
                textInputAction: TextInputAction.next,
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(15),
                child: TextFormField(
                  controller: conpass,
                  obscureText: hidepass,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (hidepass)
                            hidepass = false;
                          else
                            hidepass = true;
                        });
                      },
                      icon: Icon(
                          hidepass ? Icons.visibility : Icons.visibility_off),
                    ),
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  validator: (pass) {
                    if (pass!.isEmpty || pass.length < 6) {
                      return "Password length should be greater than 6";
                    }
                  },
                  textInputAction: TextInputAction.next,
                )),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MaterialButton(
                padding: EdgeInsets.all(20),
                color: Colors.green,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                onPressed: () {
                  final valid = formkey.currentState!.validate();
                  if (valid) {
                    logincheck(conemail.text, conpass.text);
                  } else {}
                },
                child: const Text("LOGIN"),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Signup_Form()));
                },
                child: const Text('Not a User? Register Here!!!'))
          ],
        ),
      ),
    );
  }
}