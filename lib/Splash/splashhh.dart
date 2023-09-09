import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeApp())); 
}

class HomeApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return
    Scaffold(
      backgroundColor: Colors.black,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Center(child: Image.asset("image/star.png",height: 200, width: 200, color: Color.fromARGB(255, 134, 83, 65),)),
        ),

        Text("Save Water",style: GoogleFonts.lobster(fontSize: 55,color: Colors.white54)),
        Text("Drink Coffee",style: GoogleFonts.lobster(fontSize: 55,color: Colors.white54),),

        Padding(
          padding: const EdgeInsets.only(top: 70.0),
          child: Image.asset("image/coffee.jpg"),
        ),
      ],
      ),
    );
  }
}