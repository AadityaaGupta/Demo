import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DropDownDemo extends StatelessWidget {
  const DropDownDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              alignment: Alignment.center,
              height: 20.0,
              width: 500.0,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter User Name',
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              alignment: Alignment.center,
              height: 20.0,
              width: 500.0,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter User Name',
                ),
              ),
            ),
          ),
SizedBox(
  height: 10.0,
  child: Text(''),
),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: ElevatedButton(
                style: ButtonStyle(
                  
                ),
                onPressed: (){}, 
              child: Text('Hit me')
              
              ),
            ),
          )


        ],
      ),
    );
  }
}
