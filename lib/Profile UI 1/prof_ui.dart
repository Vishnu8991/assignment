import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home: prof(),debugShowCheckedModeBanner: false,));
}

class prof extends StatelessWidget{

  var ic = [Icons.privacy_tip_outlined,Icons.history,Icons.help,Icons.settings,Icons.person_add_alt_1,Icons.logout];
  var label = ["Privacy","Purchase History","Help & Support","Settings","Invite a Friend","Logout"];

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
              height: 140,
              width: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(image: AssetImage("image/kim.jpg"),fit: BoxFit.cover)),
            ),
            SizedBox(height: 40,),
            Text(
              "Kim Wexler",
              style: GoogleFonts.heebo(textStyle: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)),
              SizedBox(height: 2,),
              Text("@wexre11",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black87),),
              SizedBox(height: 20,),
              Text("Android Developer at Google",style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.grey[600])),


              Center(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("image/google.png",height: 36,),
                      SizedBox(width: 20,),
                      Image.asset("image/facebook.png",height: 36,),
                      SizedBox(width: 20,),
                      Image.asset("image/twitter.png",height: 36,),
                      SizedBox(width: 20,),
                      Image.asset("image/linkedin.png",height: 36,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),

            Expanded(child: ListView.builder(itemBuilder: (context, index){
              return
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, bottom: 15),
                child: Card(color: Colors.grey[800],
                  child: Container(
                    decoration: BoxDecoration(color: const Color.fromARGB(255, 85, 84, 84),
                    borderRadius: BorderRadius.circular(22)),
                    child: ListTile(
                      title: Text(label[index],style: TextStyle(fontSize: 17, color: Colors.white),),
                      leading: Icon(ic[index],color: Colors.white,),
                      trailing: Icon(Icons.arrow_forward_ios, color: Colors.white,),
                    ),
                  ),
                ),
              );
            },itemCount: 6,
            )
            )
          ],
        ),
        
      ),
    );
  }
}