
import 'package:flutter/material.dart';

class StarRatingView extends StatefulWidget {
  Function(String) onclickevent;
  StarRatingView(this.onclickevent, {super.key});

  @override
  State<StarRatingView> createState() => _StarRatingViewState();
}

class _StarRatingViewState extends State<StarRatingView> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            index =1;
            widget.onclickevent.call(index.toString());
          },
          child: Text("1"),
        ),
        InkWell(
          onTap: () {
              index =2;
            widget.onclickevent.call(index.toString());
          },
          child: Text(" 2 "),
        ),
        InkWell(
          onTap: () {
              index =3;
            widget.onclickevent.call(index.toString());
          },
          child: Text(" 3 "),
        ),
      ],
    );
  }
}
