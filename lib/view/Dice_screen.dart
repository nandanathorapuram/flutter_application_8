import 'dart:math';

import 'package:flutter/material.dart';

class Dicescreen extends StatefulWidget {
  const Dicescreen({super.key});

  @override
  State<Dicescreen> createState() => _DicescreenState();
}

class _DicescreenState extends State<Dicescreen> {
  // List dices = [
  //      "lib/assets/images/d1.jpg",
  //      "lib/assets/images/d2.png",
  //       "lib/assets/images/d3.png",
  //        "lib/assets/images/d4.png",
  //         "lib/assets/images/d5.png",
  //          "lib/assets/images/d6.png",


       
  // ];
  int? randomNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Center(
        child:InkWell(
          onTap: () {
            randomNumber = Random().nextInt(6)+1;
            print(randomNumber);
            setState(() {
              
            });
          },
          child:Image.asset(
            height: 200,
            width: 200,
            randomNumber == null
                ? "lib/assets/images/button.png"
                : "lib/assets/images/$randomNumber.png"
          ),
        )
        
      ),
      
    );
  }
}
