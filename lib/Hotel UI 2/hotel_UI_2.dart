import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Hotel2(),debugShowCheckedModeBanner: false,));
}

class Hotel2 extends StatefulWidget {
  const Hotel2({super.key});

  @override
  State<Hotel2> createState() => _Hotel2State();
}

class _Hotel2State extends State<Hotel2> {

  var colors = [const Color.fromARGB(255, 30, 143, 236),Colors.pink,Colors.green];
  var icon = [Icons.hotel,Icons.restaurant,Icons.local_cafe_rounded];
  var name = ["Hotel","Restaurant","Cafe"];
  var pic = [
    "image/room.jpg",
    "image/room1.jpg",
    "image/room3.jpg",
    "image/room4.jpg",
    "image/room5.jpg",
    "image/room6.jpg",
    "image/cafe.jpg",
    "image/cafe2.jpg",
    ];
    var text = [
      "Room near Madurai",
      "Room near Hyderabad",
      "Good hotel near Chennai",
      "Restarant near Munnar",
      "Restaurant in Bangalore",
      "Restaurant in Goa",
      "Cafe in Mangalore",
      "Cafe in Kerala",
    ];
    var subt = ["Kayak, Madurai","Koni, Hyderabad","Lake, Chennai","Shore, Munnar","Frest, Bangalore","Preas, Goa","Heist, Mangalore","Coffe House, Kochi"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.cyan[800],
        actions: [Icon(Icons.favorite_border),SizedBox(width: 15,)],
        leading: Icon(Icons.view_list),
      ),
      body: Center(
        child: Column(
          children: [
            Container(color: Colors.cyan[800],
              child: Column(
                children: [
                  Text("We will help you to find.",style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white),),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      decoration: BoxDecoration(
                      color: Colors.white,
                        borderRadius: BorderRadius.circular(25)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, top: 5),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search hotel, restaurant or cafe",
                            prefixIcon: Icon(Icons.search),
                            border: InputBorder.none,
                            fillColor: Colors.cyan[800],
                            hintStyle: TextStyle(color: Colors.cyan[800], fontSize: 16)
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),

            Container(
              height: 110,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.only(left: 15, top: 15),
                    child: Container(
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,color: Colors.cyan
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(icon[index],size: 30,color: Colors.white,),
                          Text(name[index],style: TextStyle(fontSize: 17, color: Colors.white),)
                        ],
                      ),
                    ),
                  );
              }),
            ),

            SizedBox(height: 10,),
            
            Expanded(
              child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
                    children: List.generate(8, (index) => Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Container(
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200]
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Image.asset(pic[index],fit: BoxFit.cover,width: double.infinity,),
                  SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text(text[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Icon(Icons.star, color: const Color.fromARGB(255, 233, 42, 29), size: 28,),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(subt[index],style: TextStyle(fontSize: 16, color: Colors.grey[800]),),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Icon(Icons.star,size: 22,color: Colors.green[900],),
                            Icon(Icons.star,size: 22,color: Colors.green[900],),
                            Icon(Icons.star,size: 22,color: Colors.green[900],),
                            Icon(Icons.star,size: 22,color: Colors.green[900],),
                            Icon(Icons.star,size: 22,color: Colors.green[900],),
                            SizedBox(width: 10,),
                            Text("(300 reviews)")
                          ],
                        )
                      ],
                    ),
                  ),

                  
                ],
              ),
                      ),
                    )),),
            )
          ],
        ),
      ),
    );
  }
}