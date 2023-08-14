import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home: prof(),debugShowCheckedModeBanner: false,));
}

class prof extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar( backgroundColor: Colors.grey[800],
        leading: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Icon(
            Icons.arrow_back,size: 25,color: Colors.black,
            ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Icon(Icons.sort,size: 25,color: Colors.black,),
          )
          ],
        elevation: 0,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,         
        
          children: [
            SizedBox(height: 30,),
            Container(  
              height: 130,
              width: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.shade50,
                    blurRadius: 15,
                    spreadRadius: 1,
                    offset: Offset(4, 4)
                  ),
                  BoxShadow(
                    color: Colors.blue.shade50,
                    blurRadius: 15,
                    spreadRadius: 1,
                    offset: Offset(-4, -4)
                  ),
                ],
                image: DecorationImage(image: AssetImage("image/kim.jpg"),fit: BoxFit.cover)),
            ),
            SizedBox(height: 40,),
            Text(
              "Kim Wexler",
              style: GoogleFonts.heebo(textStyle: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)),
              SizedBox(height: 2,),
              Text("@wexre11",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black87),),


              Center(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("walter.png",height: 5,),
                      Image.asset("twitter.png",height: 10,),
                      Image.asset("facebook.png",height: 10,),
                      Image.asset("linkedin.png",height: 5,),
                    ],
                  ),
                ),
              )

          ],
        ),
      ),
    );
  }
}