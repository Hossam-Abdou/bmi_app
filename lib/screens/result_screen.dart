import 'package:flutter/material.dart';
import 'package:stroke_text/stroke_text.dart';

class ResultScreen extends StatelessWidget {

  bool isMale;
  final  int? result;
  final  int? age;

  ResultScreen
      ({
    required this.result,
    required this.age,
    required this.isMale,
  });
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.black,Color(0xff460a67)],begin: Alignment.bottomCenter,end: Alignment.topCenter)),

        child: Padding(
          padding: const EdgeInsets.only(left: 15.0,right: 15,top: 35),
          child: SafeArea(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: CircleAvatar(backgroundColor:Color(0xff7242e1),
                      radius: 65,
                      child:CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 55,
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Gender',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 21),),
                            Text('${isMale? 'Male':'Female'}',
                              style: TextStyle(color: Color(0xff7242e1),fontWeight: FontWeight.w900,fontSize: 25),),
                          ],
                        ),
                      ) ,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: CircleAvatar(backgroundColor: Color(0xff7242e1),
                      radius: 65,
                      child:CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 55,
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Age',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 22),),
                            Text('$age',style: TextStyle(color:Color(0xff7242e1),fontWeight: FontWeight.w900,fontSize: 30),),
                          ],
                        ),
                      ) ,
                    ),
                  ),
                ),
                CircleAvatar(backgroundColor:Color(0xff7242e1),
                  radius: 105,
                  child:CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 95,
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 5),
                        Text('Result',style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900,fontSize: 32),),
                        StrokeText(
                          text: "$result",
                          textStyle: TextStyle(
                              fontSize: 79,
                              color: Color(0xffffca00)

                          ),
                          strokeColor: Color(0xff7242e1),
                          strokeWidth: 5,
                        ),

                      ],
                    ),
                  ) ,
                ),
                SizedBox(height: 35,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Container(
                    width: double.infinity,
                    height: 62,
                    decoration: BoxDecoration(
                      color: Color(0xff4c2aa4),
                      borderRadius: BorderRadius.circular(35),
                      border: Border.all(color: Colors.grey.shade300,width: 6)


                    ),
                    child:Center(
                        child: Text('${resultFunction()}',
                      style: TextStyle(color: Colors.white,fontStyle:FontStyle.normal, decoration: TextDecoration.none,fontSize: 29),)
                    ),

                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }


   resultFunction()
  {
    if(result!<18.5)
    {
      return 'Underweight';
    }
    else if(result!>18.5 && result!<24.9)
      {
        return 'Healthy Range';
      }
    else if(result!>25 && result!<29.9){
      return 'overweight';
    }
    else
    {
      return 'Obese';
    }

  }

}

