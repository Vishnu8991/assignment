
import 'package:flutter/material.dart';
import 'package:project1/Storages%20in%20Flutter/sqf%20lite%20operation/New%20folder/screens/login_reg.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Login_Reg(),
    );
  }
}