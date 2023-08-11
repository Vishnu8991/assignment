import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(MaterialApp(home: Stag_grid(),debugShowCheckedModeBanner: false,));
}

class Stag_grid extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Staggered"),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: StaggeredGrid.count(
            crossAxisCount: 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: [
              StaggeredGridTile.count(
                crossAxisCellCount: 2, 
                mainAxisCellCount: 3, 
                child: Container(color: Colors.grey[200],
                  child: Column(
                    children: [
                      Container(
                      child: Image(image: AssetImage("image/pyra.jpg"), fit: BoxFit.fitHeight,height: 200,),
                      ),
                      SizedBox(height: 10,),
                   Text("Top 10 featured building...."),
                   SizedBox(height: 5),
                   Text("15 june 2022",style: TextStyle(color: Colors.black54))
,                   Text("Fieteshia",style: TextStyle(color: Colors.black54))
                    ],
                  ),
                )
                ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2, 
                mainAxisCellCount: 4, 
                child: Container(color: Colors.grey[200],
                  child: Column(
                    children: [
                      Container(
                      child: Image(image: AssetImage("image/luxury.jpg"), fit: BoxFit.fitHeight,height: 300,),
                      ),
                      SizedBox(height: 10,),
                   Text("Take a look at the luxu...."),
                   SizedBox(height: 5),
                   Text("22 oct 2015",style: TextStyle(color: Colors.black54))
,                   Text("Tezera syrup",style: TextStyle(color: Colors.black54))
                    ],
                  ),
                )
                ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2, 
                mainAxisCellCount: 3, 
                child: Container(color: Colors.grey[200],
                  child: Column(
                    children: [
                      Container(
                      child: Image(image: AssetImage("image/build.jpg"), fit: BoxFit.fitHeight,height: 200,),
                      ),
                      SizedBox(height: 10,),
                   Text("Repeats the structured...."),
                   SizedBox(height: 5),
                   Text("07 sept 2017",style: TextStyle(color: Colors.black54))
,                   Text("Latezia Marc",style: TextStyle(color: Colors.black54))
                    ],
                  ),
                )
                ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2, 
                mainAxisCellCount: 3, 
                child: Container(color: Colors.grey[200],
                  child: Column(
                    children: [
                      Container(
                      child: Image(image: AssetImage("image/burj.jpg"), fit: BoxFit.fitHeight,height: 200,),
                      ),
                      SizedBox(height: 10,),
                   Text("Burj khalifa the enum....."),
                   SizedBox(height: 5),
                   Text("11 Jan 2021",style: TextStyle(color: Colors.black54))
,                   Text("Marco Fetis",style: TextStyle(color: Colors.black54))
                    ],
                  ),
                )
                ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2, 
                mainAxisCellCount: 4, 
                child: Container(color: Colors.grey[200],
                  child: Column(
                    children: [
                      Container(
                      child: Image(image: AssetImage("image/cat.jpg"), fit: BoxFit.fitHeight,height: 300,),
                      ),
                      SizedBox(height: 10,),
                   Text("Wildest cats discovered...."),
                   SizedBox(height: 5),
                   Text("09 Nov 2016",style: TextStyle(color: Colors.black54))
,                   Text("Parco Pessco",style: TextStyle(color: Colors.black54))
                    ],
                  ),
                )
                ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2, 
                mainAxisCellCount: 3, 
                child: Container(color: Colors.grey[200],
                  child: Column(
                    children: [
                      Container(
                      child: Image(image: AssetImage("image/dog.jpg"), fit: BoxFit.fitHeight,height: 200,),
                      ),
                      SizedBox(height: 10,),
                   Text("Pup one of the.."),
                   SizedBox(height: 5),
                   Text("28 Mar 2015",style: TextStyle(color: Colors.black54))
,                   Text("Heibern ltd",style: TextStyle(color: Colors.black54))
                    ],
                  ),
                )
                ),
           ],),
        ),
      ),
    );
  }
}