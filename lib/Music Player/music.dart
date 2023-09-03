import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Player(),debugShowCheckedModeBanner: false,));
}

class Player extends StatefulWidget {
  const Player({super.key});

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  
  var index = 0;

  var img = [
    "https://i.scdn.co/image/ab67706f000000027c20ded96b8ae90b913df2d5",
    "https://mir-s3-cdn-cf.behance.net/project_modules/hd/137625112577745.60177189ef503.png",
    "https://diak46rl5chc7.cloudfront.net/orgs/123563/contents/it1q43t6bfssaijm/it1q43t6bfssaijm.jpg",
    "https://i.scdn.co/image/ab67706c0000da84b49421035c9525ff74eb37c5",
    "https://i.scdn.co/image/ab67706c0000da84cc2ad156c70f5a9ed2b3e8f0",
    "https://i.scdn.co/image/ab67706f0000000234611790d77ad189576ffef3",
    "https://i.scdn.co/image/ab67706c0000da849f3cbfb3fa1dc99e8eae92a6",
    "https://i.scdn.co/image/ab67706c0000da843ee5953ef7cc1861e6f805ac",
    "https://is1-ssl.mzstatic.com/image/thumb/Music127/v4/65/30/a8/6530a807-45b0-8e41-8c80-57ef73b13ba7/0617465885754.png/1200x630bb.jpg",
    "https://i1.sndcdn.com/artworks-000573555344-07649j-t500x500.jpg",
    "https://i.scdn.co/image/ab67706f0000000239764ddc6e9373987c0eb304",
    "https://i.scdn.co/image/ab67706f000000024a8c565873398337006c5b4e"

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(backgroundColor: Colors.black,
              floating: true,
              pinned: true,
              title: Text("Playlists",style: TextStyle(fontSize: 28,color: const Color.fromARGB(255, 253, 229, 12),fontWeight: FontWeight.bold),),centerTitle: true,
              bottom: AppBar(
                backgroundColor: Colors.black,
                elevation: 0,
                title: Padding(
                  padding: const EdgeInsets.only(top: 11, left: 8, bottom: 8, right: 8),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left:15, top: 5, bottom: 5, right: 5),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Artists, songs, or podcast ...",
                          hintStyle: TextStyle(color: Color.fromARGB(255, 253, 229, 12)),
                          suffixIcon: Icon(Icons.search,color: Color.fromARGB(255, 253, 229, 12),),
                          border: InputBorder.none
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey[900]
                    ),
                  ),
                  
                ),
              ),
            ),
            SliverGrid.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
            itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(img[index],fit: BoxFit.fitHeight)),
                  decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(20)),
                ),
              );
            },
            itemCount: 12,)
          ],
        )),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.white,
          backgroundColor: Colors.black,
          selectedItemColor: Color.fromARGB(255, 253, 229, 12),
          currentIndex: index,
          onTap: (tappedIndex){
            setState(() {
              index = tappedIndex;
            });
          },
          items: const[
            BottomNavigationBarItem(
              icon: Icon(Icons.home,),
              label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.search,),
              label: "Search"),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_add,),
              label: "Library"),
            BottomNavigationBarItem(
              icon: Icon(Icons.person,),
              label: "Profile"),
          ]),
    );
  }
}