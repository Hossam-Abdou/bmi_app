import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GenderButton extends StatelessWidget {
String? text;
String? image;

GenderButton({this.text,this.image});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey,
          ),
          child: Column(
            children: [
              Image.network('${image}',height: 140,),
              Text('${text}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800),),
            ],
          ),
        ),
      ),
    );
  }
}
