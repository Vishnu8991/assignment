import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: WhatsApp(),debugShowCheckedModeBanner: false,theme: ThemeData(
    primarySwatch: Colors.blue
  ),));
}

class WhatsApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff128C7E),
        title: Text("WhatsApp"),
        actions: [
          Icon(Icons.camera_alt_outlined),
          SizedBox(width: 25,),
          Icon(Icons.search),
          SizedBox(width: 10,),
          PopupMenuButton(itemBuilder: (context){
            return [
              PopupMenuItem(child: Text("New group")),
              PopupMenuItem(child: Text("New broadcast")),
              PopupMenuItem(child: Text("Linked devices")),
              PopupMenuItem(child: Text("Starred messages")),
              PopupMenuItem(child: Text("Payments")),
              PopupMenuItem(child: Text("Settings")),
            ];
          }),
        ],
      ),
      body: ListView(
        children: [
          Container(
            color: Color(0xff128C7E),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.groups_2,color: Colors.white,),
                  Padding(
                    padding: EdgeInsets.only(right: 35),
                    child: TextButton(onPressed: (){}, child: Text("Chats",style: TextStyle(color: Colors.white),)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 40),
                    child: TextButton(onPressed: (){}, child: Text("Status",style: TextStyle(color: Colors.white))),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: TextButton(onPressed: (){}, child: Text("Calls",style: TextStyle(color: Colors.white))),
                  ),
                ],
              ),
            ),
          ),
          Card(
            elevation: 0,
            child: ListTile(
              title: Text("Pinkman"),
              subtitle: Text("meet there "),
              leading: CircleAvatar(
                backgroundImage: AssetImage("image/jessie.png"),
              ),
              trailing: Text("Yesterday",style: TextStyle(color: Colors.grey),),
            ),
          ),
          Card(
            elevation: 0,
            child: ListTile(
              title: Text("Arya mes"),
              subtitle: Text("Sure"),
              leading: CircleAvatar(
                backgroundImage: AssetImage("image/Johnny.png"),
              ),
              trailing: Text("\10:05 pm",style: TextStyle(color: Colors.grey),),
            ),
          ),
          Card(
            elevation: 0,
            child: ListTile(
              title: Text("Rhea sea"),
              subtitle: Text("Thank you"),
              leading: CircleAvatar(
                backgroundImage: AssetImage("image/kim.jpg"),
              ),
              trailing: Text("\9:30 pm",style: TextStyle(color: Colors.grey),),
            ),
          ),
          Card(
            elevation: 0,
            child: ListTile(
              title: Text("Mando"),
              subtitle: Text("Take care bye"),
              leading: CircleAvatar(
                backgroundImage: AssetImage("image/mando.jpg"),
              ),
              trailing: Text("Yesterday",style: TextStyle(color: Colors.grey),),
            ),
          ),
          Card(
            elevation: 0,
            child: ListTile(
              title: Text("Michael"),
              subtitle: Text("Call later"),
              leading: CircleAvatar(
                backgroundImage: AssetImage("image/michael.jpg"),
              ),
              trailing: Text("\7:56 pm",style: TextStyle(color: Colors.grey),),
            ),
          ),
          Card(
            elevation: 0,
            child: ListTile(
              title: Text("Mike"),
              subtitle: Text("how r u?"),
              leading: CircleAvatar(
                backgroundImage: AssetImage("image/Mike.png"),
              ),
              trailing: Text("\$6:45 am",style: TextStyle(color: Colors.grey),),
            ),
          ),
          Card(
            elevation: 0,
            child: ListTile(
              title: Text("Nick"),
              subtitle: Text("Wassup"),
              leading: CircleAvatar(
                backgroundImage: AssetImage("image/nick.jpg"),
              ),
              trailing: Text("\1:30 pm",style: TextStyle(color: Colors.grey),),
            ),
          ),
          Card(
            elevation: 0,
            child: ListTile(
              title: Text("Thomas"),
              subtitle: Text("sure thank you"),
              leading: CircleAvatar(
                backgroundImage: AssetImage("image/thomas.png"),
              ),
              trailing: Text("\4:00 pm",style: TextStyle(color: Colors.grey),),
            ),
          ),
          Card(
            elevation: 0,
            child: ListTile(
              title: Text("Walter"),
              subtitle: Text("never"),
              leading: CircleAvatar(
                backgroundImage: AssetImage("image/walter.png"),
              ),
              trailing: Text("\5:30 am",style: TextStyle(color: Colors.grey),),
            ),
          ),
          Card(
            elevation: 0,
            child: ListTile(
              title: Text("Leonardo"),
              subtitle: Text("told you"),
              leading: CircleAvatar(
                backgroundImage: AssetImage("image/leonardo.png"),
              ),
              trailing: Text("\2:00 pm",style: TextStyle(color: Colors.grey),),
            ),
          ),
          Card(
            elevation: 0,
            child: ListTile(
              title: Text("Bradley"),
              subtitle: Text("wanna meet there"),
              leading: CircleAvatar(
                backgroundImage: AssetImage("image/Bradley.png"),
              ),
              trailing: Text("\9:30 pm",style: TextStyle(color: Colors.grey),),
            ),
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
                      FloatingActionButton(
                        child: Icon(Icons.add),
                          backgroundColor: Colors.green.shade800,
                        onPressed: () {
                        },
                      ),
                        
                    ],
        )  
        ],
        
      ),
      
    );
  }
}
