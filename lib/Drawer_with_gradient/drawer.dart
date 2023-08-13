import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Drawerr(),debugShowCheckedModeBanner: false,));
}

class Drawerr extends StatelessWidget{

  var icons = [Icons.dashboard,
              Icons.leak_add_sharp,
              Icons.people_alt,
              Icons.rocket,
              Icons.emoji_people_rounded,
              Icons.subject_sharp,
              Icons.payment,
              Icons.person,
              Icons.library_add_check_outlined];

  var text = ["Dashboard","Leads","Clients","Project","Patients","Subscription","Payments","User","Library"];


  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: Drawer(
        child: Container(
          decoration: BoxDecoration(gradient: 
          LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color.fromARGB(255, 235, 81, 132),
              Color.fromARGB(255, 225, 69, 58)
            ])),
          child: ListView(
            children: [SizedBox(height: 60,),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(right: 10, left: 5),
                  child: CircleAvatar(backgroundImage: AssetImage("image/mark.png")),
                ),
                title: Text("Mark Zuckerberg",style: TextStyle(color: Colors.white),),
                subtitle: Text("CEO of Facebook",style: TextStyle(color: Colors.white)),
              ),

              SizedBox(height: 40,),

              
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: List.generate(9, (index) => Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ListTile(
                        leading: Icon(icons[index],color: Colors.white,),
                        title: Text(text[index],style: TextStyle(color: Colors.white),),
                      ),
                    )),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(15),
                child: Text(
                  "Logout",
                  style: TextStyle(color: Colors.white),
                ),
                decoration: BoxDecoration(color: Color.fromARGB(255, 205, 30, 21),
                borderRadius: BorderRadius.circular(15)),
              ),
            )

            ],
          ),
        ),
      ),
    );
  }
}