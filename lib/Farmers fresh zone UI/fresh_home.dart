import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home: Fresh(),debugShowCheckedModeBanner: false,));
}

class Fresh extends StatefulWidget {
  const Fresh({super.key});

  @override
  State<Fresh> createState() => _FreshState();
}

class _FreshState extends State<Fresh> {
  @override

  var names = ["OFFERS","VEGETABLES","FRUITS","EXOTIC","FRESH CUTS","NUTRITION CGARGES","PACKED FLAVORS","GOURMET SALADS"];

  var img = [
    "https://res.cloudinary.com/farmersfreshzone/image/upload/v1638787119/Product/jghu86qgjdtnsvlyvnkl.jpg",
    "https://res.cloudinary.com/ffz/image/upload/v1676114778/banners/pxytchw9khrnorziagay.jpg",
    "https://res.cloudinary.com/farmersfreshzone/image/upload/c_scale,h_250,w_250/c_scale,w_2081/v1598435765/Product/tssgwn0eeejipf8mhfd2.jpg",
    "https://res.cloudinary.com/ffz/image/upload/v1676379471/banners/w0mivtggfeptjocxzkc5.jpg",
    "https://res.cloudinary.com/ffz/image/upload/v1675850558/banners/e3wrznkywyhuslrmpmep.jpg",
    "https://res.cloudinary.com/farmersfreshzone/image/upload/t_media_thumb/v1647933525/product/kayzgbtyrzup3uiiflhu.jpg",
    "https://res.cloudinary.com/ffz/image/upload/v1675402098/banners/yr56bd8zbhaokg4egkn6.jpg",
    "https://res.cloudinary.com/ffz/image/upload/v1676114624/banners/a0b1dt5dtcg2rit5tq4k.jpg",
  ];

  var pname = ["Offers","Vegetables","Fruits","Exotic","Fresh Cuts","Nutrition Charges","Packed Flavors","Gourmet Salads"];

  var index = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Color.fromARGB(255, 45, 180, 88),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("fARMERS fRESH ZONE",style: GoogleFonts.kanit(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                        ),
                        Spacer(),
                        Icon(Icons.location_on_outlined, color: Colors.white,size: 16,),
                        Text("Kochi",style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.bold)),
                        Icon(Icons.keyboard_arrow_down_rounded, color: Colors.white,size: 19,)
                      ],
                    ),
                    SizedBox(height: 6,),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: TextField
                      (decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Search for Vegetables, Fruits ..",hintStyle: TextStyle(color: Colors.grey[600],fontSize: 17),
                        prefixIcon: Icon(Icons.search),
                        isDense: true,
                        filled: true,
                        fillColor: Colors.white,)
                      
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 3,),

            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Container(
                height: 55,
                child: Expanded(
                  child: ListView.builder
                  (itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 8, left: 4, right: 4),
                      child: Container(alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 203, 239, 203)
                        ),
                        child: Text(names[index],style: TextStyle(color: Colors.green[800], fontWeight: FontWeight.bold ,fontSize: 13),),
                      ),
                    );
                  },scrollDirection: Axis.horizontal,itemCount: names.length,)),
              ),
            ),

            SizedBox(height: 10,),

            Container(color: Colors.black,
              height: 180,
              child: Image.network("https://res.cloudinary.com/farmersfreshzone/image/upload/v1690462847/banner/eyrk9ls3hidu00miboq6.jpg",fit: BoxFit.fill,)),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.grey.shade300)),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.timer_sharp,color: Colors.green,),
                            SizedBox(height: 5,),
                            Text("30 MINS",style: TextStyle(color: Colors.grey[900]),),
                            SizedBox(height: 5,),
                            Text("POLICY",style: TextStyle(color: Colors.grey[900]),),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.phone_android_sharp,color: Colors.green,),
                            SizedBox(height: 15,),
                            Text("TRACEABILITY",style: TextStyle(color: Colors.grey[900]),),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.people_alt_outlined,color: Colors.green,),
                            SizedBox(height: 5,),
                            Text("LOCAL",style: TextStyle(color: Colors.grey[900]),),
                            SizedBox(height: 5,),
                            Text("SOURCING",style: TextStyle(color: Colors.grey[900]),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Shop By Category",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
              ),
              SizedBox(height: 5,),

              Container(
                height: 400,
                child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 3, right: 3),
                    child: Card(
                      color: Colors.grey[100],
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    ),
                      child: Column(
                        children: [
                          Container(
                            height:90,
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(img[index],fit: BoxFit.cover,)),),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(pname[index]),
                          ),
                        ],
                      ),
                    ),
                  );
                },itemCount: img.length,),
              )
            
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey.shade900,
          backgroundColor: Colors.grey.shade300,
          selectedItemColor: Color.fromARGB(255, 45, 180, 88),
          currentIndex: index,
          onTap: (tappedIndex){
            setState(() {
              index = tappedIndex;
            });
          },
          items: const[
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("image/farm.png"),color: Color.fromARGB(255, 24, 129, 57),),
              label: "HOME"),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined,color: Colors.black54,),
              label: "CART"),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined,color: Colors.black54,),
              label: "ACCOUNT"),
          ]),
    );
  }
}