import'package:flutter/material.dart';

class ImageLiked extends StatefulWidget{

  final bool initialLiked;
  final int initialCount;

  ///Constructor
  const ImageLiked({
    super.key,
    required this.initialLiked,
    required this.initialCount
  });

  @override
  State<ImageLiked> createState() => _ImageLikedState();
}

class _ImageLikedState extends State<ImageLiked>{
  late bool isLiked;
  late int likeCount;

  @override
  void initState(){
    super.initState();
    isLiked = widget.initialLiked;
    likeCount = widget.initialCount;
  }

  @override
  Widget build(BuildContext context){


    return Row(
      children: [

        ///Logic of Like Button
        IconButton(
          icon: isLiked? Icon(Icons.favorite,color: Colors.red,size: 50) : Icon(Icons.favorite_border,size: 50,),
          onPressed: (){
            setState(() {
              isLiked = !isLiked;
              isLiked? likeCount++ : likeCount--;
            });
          },
        ),

        const SizedBox(width: 10),

        ///Display LikeCount
        Text(
          "$likeCount",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500
          ),

        )
      ],
    );
  }
}
