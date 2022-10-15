import 'dart:math';
import 'package:disvover_app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black87.withOpacity(0.5),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Text("Discover",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.white),),
            ),
            Container(
              child: Icon(Icons.search, color: Colors.grey, size: 35,),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black87.withOpacity(0.5),
       body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
         child: Container(
           child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 120,
                padding: EdgeInsets.only(left: 20),
                child: ListView.builder(scrollDirection: Axis.horizontal,physics:  BouncingScrollPhysics(),itemCount: Name.length ,itemBuilder: (context, index) {
                  return Container(
                    width: 68,
                    height: 94,
                    margin: EdgeInsets.only(right: 20),
                    child: Column(
                      children: [
                        Container( 
                          padding: EdgeInsets.all(2.5),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(colors: [Colors.red, Colors.orange]),
                          ),
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 1.5),
                              image: DecorationImage(image: NetworkImage("https://source.unsplash.com/random/${index+3}"),fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(Name[index],style: TextStyle(fontSize: 11, color: Colors.grey),),
                        ),
                      ],
                    ),
                  );
                }),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                width: double.infinity,
                height: 200,
                child: Expanded(
                  child: ListView.builder(scrollDirection: Axis.horizontal, physics: BouncingScrollPhysics(), itemCount: Photo.length, itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 20),
                      width: 350,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(image: AssetImage(Photo[index]),fit: BoxFit.cover
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(20),
                            child: Text(NamePhoto[index],style: TextStyle(fontWeight: FontWeight.bold, color: Colors. white),),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Text("Most Watched", style: TextStyle(fontWeight: FontWeight.bold, color: Colors. white, fontSize: 25)),
              ),
              const SizedBox(height: 30,),
              Container(
                padding: EdgeInsets.only(left: 20),
                width: double.infinity,
                height: 140,
                child: Expanded(
                  child: ListView.builder(scrollDirection: Axis.horizontal, physics: BouncingScrollPhysics(), itemCount: Photo.length, itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          width: 140,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(image: AssetImage(Photo[Random().nextInt(Photo.length)]),fit: BoxFit.cover),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 10, bottom: 15),
                                child: Text("Prepare for you ${schetchik[index]} \nskateboard jump", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),),
                              ),
                              Container(
                                child: Text(name[index], style: TextStyle(color: Colors.grey),),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10, bottom: 15),
                                child: Text(Views[index], style: TextStyle(color: Colors.grey),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ),
              const SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.only(left: 20),
              width: double.infinity,
              height: 140,
              child: Expanded(
                child: ListView.builder(scrollDirection: Axis.horizontal, physics: BouncingScrollPhysics(), itemCount: Photo.length, itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 20),
                        width: 140,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(image: AssetImage(Photo[Random().nextInt(Photo.length)]),fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, bottom: 15),
                              child: Text("Prepare for you ${schetchik[index]} \nskateboard jump", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),),
                            ),
                            Container(
                              child: Text(name[index], style: TextStyle(color: Colors.grey),),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10, bottom: 15),
                              child: Text(Views[index], style: TextStyle(color: Colors.grey),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
              ),
            ),
            const SizedBox(height: 30,),
             Container(
                padding: EdgeInsets.only(left: 20),
                width: double.infinity,
                height: 140,
                child: Expanded(
                  child: ListView.builder(scrollDirection: Axis.horizontal, physics: BouncingScrollPhysics(), itemCount: Photo.length, itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          width: 140,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(image: AssetImage(Photo[Random().nextInt(Photo.length)]),fit: BoxFit.cover),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 10, bottom: 15),
                                child: Text("Prepare for you ${schetchik[index]} \nskateboard jump", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),),
                              ),
                              Container(
                                child: Text(name[index], style: TextStyle(color: Colors.grey),),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10, bottom: 15),
                                child: Text(Views[index], style: TextStyle(color: Colors.grey),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ),
            const SizedBox(height: 20,),
          ]),
         ),
       ),
       bottomNavigationBar:   BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueGrey,
        selectedIconTheme: IconThemeData(color: Colors.deepPurple),
        selectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Disvover"),
          BottomNavigationBarItem(icon: Icon(Icons.video_camera_back_rounded), label: "Brovse"),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: "Bookmark"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "More"),
        ],
      ),
    );
  }
}

List Name = [
  "Akbar",
  "Abbos",
  "Akmal",
  "Bobur",
  "Sardor",
  "Sarvar",
  "Jalol",
  "Kamola",
  "Alisher",
  "Madina"
];

List Photo = [
  MyImages.image_skyboard1, 
  MyImages.image_skyboard2,
  MyImages.image_skyboard3,
  MyImages.image_skyboard4,
  MyImages.image_skyboard5,
  MyImages.image_skyboard6,  
];

List NamePhoto = [
  "Thomas Hope\n   2 weeks ago",
  "Elthon John\n   5 weeks ago",
  "Richard Park\n   1 weeks ago",
  "Donald Elthon\n   3 weeks ago",
  "John Wick\n   4 weeks ago",
  "Wick Thomas\n   5 days ago",
];

List schetchik = [
  "fourth",
  "second",
  "third",
  "sixth",
  "ninth",
  "first",
];

List name = [
    "Thomas Hope",
  "Elthon John",
  "Richard Park",
  "Donald Elthon",
  "John Wick",
  "Wick Thoma",
];

List Views = [
  "120,908 views • 2 weeks ago",
  "95,908 views • 5 weeks ago",
  "87,908 views • 1 weeks ago",
  "150,908 views • 3 weeks ago",
  "90,908 views • 4 weeks ago",
  "100,908 views • 5 days ago",
];