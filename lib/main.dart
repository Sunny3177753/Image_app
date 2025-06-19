import 'package:flutter/material.dart';
import 'image_liked.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  // bool isLiked = false;
  // int likeCount = 0;

  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return MaterialApp(
      title: "My First App",

      home: Scaffold(

        backgroundColor: Colors.black26,

        appBar: AppBar(
          elevation: 10,
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
          title: const Text(
            "Image App",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),

        body: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  ///Asset Image
                  Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage("asset_images/bulb.jpg"),fit: BoxFit.cover),
                        boxShadow: [
                          BoxShadow(color: Colors.black,spreadRadius: 10,blurRadius: 20)
                        ]
                    ),
                  ),

                  ///Simple Text
                  const Text(
                    "Asset Image",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic
                    ),
                  ),

                  ///Image liked or not liked
                  const ImageLiked(initialLiked: false,initialCount: 0),



                ],
              ),

              /////Line at the middle of the Scaffold
              Row(
                children: [
                  Expanded(child: Container(height: height*.01,width:width*.01,color: Colors.black,)),
                ],
              ),

              ///arranging image ,text, liked/notLiked button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  const Text(
                    "Network Image",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic
                    ),
                  ),

                  ///Image Liked or Not Liked
                  const ImageLiked(initialLiked: false,initialCount: 0),

                  // IconButton(onPressed: (){
                  //   setState(() {
                  //       isLiked = !isLiked;
                  //       isLiked? likeCount++ : likeCount--;
                  //   });
                  // }, icon: isLiked? Icon( Icons.favorite,color: Colors.red) : Icon(Icons.favorite_border)),
                  // Text("$likeCount"),
                  // SizedBox(width: width*.1),

                  ///Network Image
                  Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                        image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTszaG8A1ybJ5E2XlIbfIY_VoluBNGmMPeVtg&s"),fit: BoxFit.cover,scale: 1),
                        boxShadow: [
                          BoxShadow(color: Colors.black,spreadRadius: 10,blurRadius: 20)
                        ]
                    ),
                  ),
                ],
              )
            ]
          ),
        ),
      ),
    );
  }
}
