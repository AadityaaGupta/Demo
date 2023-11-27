import 'package:flutter/material.dart';

class StarRatingView extends StatefulWidget {
  Function(String) onclickevent;
  StarRatingView(this.onclickevent, {super.key});

  @override
  State<StarRatingView> createState() => _StarRatingViewState();
}

class _StarRatingViewState extends State<StarRatingView> {
  int index = 0;
  bool colored = false,
      colored1 = false,
      colored2 = false,
      colored3 = false,
      colored4 = false;
  @override
  Widget build(BuildContext context) {
    return
    // return ListView.builder(
    //     itemCount: 5,
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context, index) {
    //       return Row(
    //         children: [
    //           IconButton(
    //             onPressed: () {
    //               widget.onclickevent.call(index.toString());

    //               // ImageIcon(
    //               //   AssetImage('assets/Images/StarE.png'),

    //               // );

    //               // while(index!=0)
    //               //   {
    //               //     icon:Icon(Icons.star);
    //               //   }

    //               setState(() {
                    
    //                 // colored = !colored;
    //               });


    //             },
                
    //             icon: Icon( Icons.star_border),
    //           )
    //         ],
    //       );
    //     });

    Row(
      children: [
 InkWell(
      onTap: () {
          index =1;
        widget.onclickevent.call(index.toString());

        setState(() {
          colored=!colored;
        });
      },
      child: Expanded(
        child: Icon(index<1?Icons.star_border:Icons.star

        ),

        ),
    ),
    InkWell(
      onTap: () {
          index =2;
        widget.onclickevent.call(index.toString());

        setState(() {
          colored1=!colored1;
        });
      },
      child: Expanded(
        child: Icon(index<2?Icons.star_border:Icons.star

        ),

        ),
    ),
    InkWell(
      onTap: () {
          index =3;
        widget.onclickevent.call(index.toString());
        setState(() {
          colored2=!colored2;
        });
      },
      child: Expanded(
        child: Icon(index<3?Icons.star_border:Icons.star
        ),

        ),
    ),

    InkWell(
      onTap: () {
          index =4;
        widget.onclickevent.call(index.toString());
        setState(() {
          colored3=!colored3;
        });
      },
      child: Expanded(
        child: Icon(index<4?Icons.star_border:Icons.star

        ),

        ),
    ),

    InkWell(
      onTap: () {
          index =5;
        widget.onclickevent.call(index.toString());
        setState(() {
          colored4=!colored4;
        });
      },
      child: Expanded(
        child: Icon(index<5?Icons.star_border:Icons.star

        ),

        ),
    ),

      ],
    );
  }
}
