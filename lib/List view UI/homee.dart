import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Listview(),debugShowCheckedModeBanner: false,));
}

class Listview extends StatelessWidget{

  var name = ["Apple","Mango","Banana","Banana","Grapes","Watermelon","Watermelon","Kiwi","Kiwi","Orange","Orange","Peach","Peach"];
  var image = ["image/apple.png",
               "image/mango.png",
               "image/banana.png",
               "image/banana.png",
               "image/grape.png",
               "image/watermelon.png",
               "image/watermelon.png",
               "image/kiwi.png",
               "image/kiwi.png",
               "image/orange.png",
               "image/orange.png",
               "image/peach.png",
               "image/peach.png",
               ];
  
  var rate = [20,40,10,18,25,30,40,50,60,20,15,50,100];


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle:true,
        title: Text("Product List"),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.shopping_cart),
          )
        ],),
        body: ListView(
          children:
            List.generate(13, (index) => Card(
              child: ListTile(tileColor: Colors.blue[100],
                title: Text(name[index]),
                subtitle: Text("\$ ${rate[index]}"),
                leading: Image.asset(image[index]),
                trailing: TextButton(onPressed: (){},
                child: Text("Add to cart", style: TextStyle(backgroundColor: Colors.blue, color: Colors.blue[100], fontSize: 20),)),
              ),
            )),
        ),
    );
  }
}