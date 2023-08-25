import 'package:assignment/List%20view%20UI/homee.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home: Hotel(),debugShowCheckedModeBanner: false,));
}


class Hotel extends StatefulWidget {
  const Hotel({super.key});

  @override
  State<Hotel> createState() => _HotelState();
}

class _HotelState extends State<Hotel> {
  var index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("image/resort1.jpg"),fit: BoxFit.fitHeight)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Serenity Resort",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),),
                  SizedBox(height: 3,),
                  Text("Wayanad, Kerala",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                  SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(primary: Colors.grey, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),child: Text("6,489 reviews")),
                  Icon(Icons.favorite_border,color: Colors.white,),
                    ],
                  ),
                ],
              ),
            ),
            ),
            Container(
              margin: EdgeInsets.all(22),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Row(
                            children: [
                            Icon(Icons.star,color: Colors.green[900],size: 22,),
                            Icon(Icons.star,color: Colors.green[900],size: 22),
                            Icon(Icons.star,color: Colors.green[900],size: 22),
                            Icon(Icons.star,color: Colors.green[900],size: 22),
                            Icon(Icons.star,color: Colors.grey,size: 22),
                          ]),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Text("\$450",style: TextStyle(color: Colors.green[900], fontWeight: FontWeight.bold, fontSize: 16),),
                          )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: [
                              Icon(Icons.location_on),
                              Text("2.4 km to Banasura Dam", style: TextStyle(color: Colors.grey[700], fontSize: 13),)
                            ],),
                          Text("per night",style: TextStyle(color: Colors.grey[700], fontSize: 13))
                          ],
                        ),
                        SizedBox(height: 18,),
                        ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(primary: Colors.green[700], shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 11),
                          child: Text("Book Now"),
                        ))
                      ],
                    )
                  ),

                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("About The Serenity Resort",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),),
                              SizedBox(height: 10,),
                                  Text("""Located in the growing hotspots of the Western Ghats, The Serenity Resort is designed to beautify your holiday experience with leisure amenities like an Ayurvedic Spa Centre.Wake up the chirps of beautiful birds and the scenery of Banasura hills and the lake.
                                        Enjoy a swim in the swimming pool or book for yourself a spa session on-site.Savour delicious dishes at the multi-cuisine restaurant.Bond with your friends or family next to the bonfire or go on a trek hosted by the property.Wayanad, the green abode, is a rural district burrowed in the Western Ghats flanking the south- western borders of India. Lush, pristine and enchanting, this is a region rich in culture, history and biodiversity. It is located at the junction of three South Indian states – Tamil Nadu, Karnataka and Kerala – and is an integral part of the Nilgiri Biosphere reserve. This verdant hill station is home to many plantations, forests, wildlife and indigenous tribes.In terms of geographical location, Wayanad district stands on the southern tip of the Deccan plateau and its chief glory is the majestic Western Ghats with lofty ridges and rugged terrain interspersed with dense forest, tangled jungles and deep valleys. The place also enjoys a strategic location as the leading tourist centres of South India like Ooty, Mysore, Bangalore, Coorg and Kannur are situated around this region.""",style: GoogleFonts.robotoSlab()),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey[800],
          backgroundColor: Colors.grey[200],
          selectedItemColor: const Color.fromARGB(255, 54, 182, 58),
          currentIndex: index,
          onTap: (tappedIndex){
            setState(() {
              index = tappedIndex;
            });
          },
          items: const[
            BottomNavigationBarItem(
              icon: Icon(Icons.search,),
              label: "Search"),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite,),
              label: "Favorite"),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings,),
              label: "Settings"),
          ]),
    );
  }
}