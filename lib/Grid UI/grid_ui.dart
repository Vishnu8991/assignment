import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Grid(),debugShowCheckedModeBanner: false,));
}

class Grid extends StatelessWidget{

  var imagee = ["image/bag.png",
                "image/earring.png",
                "image/socks.png",
                "image/watch.png",
                "image/shoe.png",
                "image/nike.png",
                "image/camera.png",
                "image/cap.png",
                "image/glasses.png",
                "image/jug.png",
                "image/ring.png",
                "image/speaker.png",];
  
  var name = ["Bag","Earring","Socks","Watch","Shoe","T-shirt","Camera","Cap","Glasses","Jug","Ring","Speaker",];

  var price = [100,150,90,240,210,180,320,110,130,150,210,140];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("SHRINE"),
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.search),
        Padding(
          padding: EdgeInsets.only(right:20),
          child: Padding(
            padding: EdgeInsets.only(left:20),
            child: Icon(Icons.format_align_center_sharp),
          ),
        )]
        
        ),

        body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: List.generate(12, (index) => Padding(
          padding: EdgeInsets.all(12.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[200]
            ),
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(imagee[index],height: 90,),
                    SizedBox(height: 10,),
                    Text(name[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Text("\$ ${price[index]}")
                  ],
                ),
              ),
            ),
          ),
        )),)
    );
  }
}