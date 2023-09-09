import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Payment(),debugShowCheckedModeBanner: false,));
}

class Payment extends StatelessWidget{

  var cwdr = ["974456/9856547856985123","970202/9856544563217891","971239/9856547412589630","979615/9856545698523654"];
  var npr = ["NPR. 10,000","NPR. 11,000","NPR. 13,000","NPR. 12,000"]; 
  var img = [
    "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAb1BMVEX///8AAADb29vY2NhhYWFubm53d3f7+/usrKy0tLQ+Pj65ubnf39+Wlpb29vbl5eWioqJLS0uJiYkpKSm/v7+mpqYYGBggICAyMjLw8PC2traYmJiGhoaQkJBmZmaenp4ODg5ZWVl+fn5HR0fMzMyLRkgcAAADMklEQVR4nO3Y61LiQBRF4bRcwyVB7qLA6Pj+zzhY1ihKSrqZs087uNb/nPRHUkmHoiAiIiKiH1NvVE47bbs647KV23TcvB0U7ea5Ya9VUwnvtWmVm1cUE6HvpXFmXz0TA0OY1TmBpdz30jAfUH2H/m2RC7h3AoawzwOcuwFDyPLeqB2BIeR43AxchQN/YN8VGELfXegMDMEbuIhc13KxKb9qs1hFTvK+iLHrOr+v7EVOWjuojmpFLivmAXEbOWskVx23jVxVxI4r+rU6cXC9F/u7H26uwdetoye1XYXRy7LME3h39cJRFqHnzu0mi/Dm6oWe/74hRIgQIUKECBEi/M+Eg0lf2WSQW7iVn2ucV/jL4WSrrMKOw8m6CBUhNA2hJISmIZSE0DSEkhCahlASQtMQSkJoGkJJCE1DKAmhaQglITQNoSSEpiGUhNA0hJIQmoZQEkLTEEpCaBpCSQhNQygJoWkIJSE0DaEkhKYhlITQNISSEJqGUBJC0xBKQmgaQkkITUMoCaFpCCUhNA2hJISmIZSE0DSEkhCahlASQtMQSkJoGkJJCE1DKAmhaQglITQNoSSEpiGUhNA0hJIQmoZQEkLTEEpCaBpCSQhNQygJoWkIJSE0DaEkhKYhlPQmvHU42WNWYRjJz1WHvMKw6WkbhtxCxxAiRIgQ4c8QdjeturV5ulrh/dvx++sUHm/wRlcoXFYfJlTLqxN+3qJfcBW/t/DhZMbDtxamX4C7kxl331pYn1/Ox5q+lH+nDtF/i75XpS5u3DBkmzrk9D4Qlrq4TcOMMnWIJ7B4TFzcsGHGPHGGx39C790nrm7RMCP1Gm5dhamvi6eGGamvC89H6aFV2uqW/z5i5QssJmnLC88nE54TJ0ychb3E9Q1OJqS+Dp2B6Rfx83Mi9QOq6Vklbp24xPLD0ZvEo9f+wPS96fTo4OT9TJ1BmHwZwmz++o1YDWephzbtGBwap67zsC/pbru36Yfdn1+MpuR77cKyAYui7wIszy9EV524MbmgdZaHzFGX/TEY3z6z71CV/odLfNvq/AI8GrYlvF3Td3OueqPhuLNrm7V76rd6uVFERERE5NcfHqZDdU0hZ9UAAAAASUVORK5CYII=",
    "https://yt3.googleusercontent.com/ytc/AOPolaSGQP5s1CcBVm9vjfIQ9ghs6H0EdzzB1TLRLrOB=s900-c-k-c0x00ffffff-no-rj",
    "https://play-lh.googleusercontent.com/sIaYZrrYUXJPknaeHTTLkr-DkXD3ldvbojaCdPpjXD0IYfUNOLcfw-12vcBjiGyqfg=w750-h750",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Noun_Project_people_icon_3376085.svg/1200px-Noun_Project_people_icon_3376085.svg.png",
    "https://cdn.soft112.com/dhbvn-electricity-bill-payment/00/00/0G/KN/00000GKN9S/pad_screenshot_1.png",
    "https://static-00.iconduck.com/assets.00/google-lens-icon-512x512-nqbl0ojo.png",
  ];

  var name = ["My Account","Load eSewa","Payment","Fund Transfer","Schedule Payment","Scan To Pay"];

  @override 
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.qr_code_scanner),
          SizedBox(width: 15,)
        ],
        title: Text("Welcome! BRADLEY"),centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate.fixed(
              [
                Stack(
                  children: [
                    Container(
                      height: 200,
                    ),
                    Container(
                      height: 90,
                      color: Colors.red.shade900,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ClipRRect(
                        child: SizedBox(
                          height: 160,
                          child: Card(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20, right: 20,top: 20),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.red.shade900,
                                    radius: 45,
                                    child: CircleAvatar(
                                      radius: 41,
                                      backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Gandy_by_Walterlan_Papetti.jpg/250px-Gandy_by_Walterlan_Papetti.jpg"),
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Text("BRADLEY SINGH COOPER",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Text("NPR. 1,00,999.50",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.red),),
                                        ),
                                        SizedBox(width: 10,),
                                        Icon(Icons.remove_red_eye,size: 20,color: Colors.blue[400],),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Text("258963147896301201",style: TextStyle(fontWeight: FontWeight.bold),),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, bottom: 10),
                  child: Text("WOULD YOU LIKE TO?",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                ),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 250,color: Colors.grey[200],
                    child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
                    itemBuilder: (BuildContext context, index){
                      return 
                        Container(height: 150,
                          child: Card(
                            child: Container(
                              height: 100,
                              width: 120,
                              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.network(img[index],fit: BoxFit.cover,height: 60,),
                                  SizedBox(height: 10,),
                                  Text(name[index],style: TextStyle(fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                          ),
                        );
                    },itemCount: 6,),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 25, bottom: 10),
                  child: Text("LAST TRANSACTIONS",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                ),

                Container(
                  height: 250,
                  child: ListView.builder(itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white, boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400,
                            offset: Offset(0.0,2.0),
                            // blurRadius: 10,
                            spreadRadius: 1.0
                          ),
                        ]),
                        child: Row(
                          children: [
                            Container(height: 80, width: 10,decoration: BoxDecoration(color: Colors.red.shade900,borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(8)))),
                            SizedBox(width: 10,),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("CWDR/",style: TextStyle(fontWeight: FontWeight.bold),),
                                Text(cwdr[index],style: TextStyle(fontWeight: FontWeight.bold),),
                                Text("15-07-2015"),
                              ],
                            ),
                            Spacer(),
                            Text(npr[index],style: TextStyle(fontWeight: FontWeight.bold),),
                            SizedBox(width: 10,)
                          ],
                        ),
                      ),
                    );
                  }),itemCount: 4,),
                )
              ]
            ),
            ),
        ],
      )
    );
  }
}