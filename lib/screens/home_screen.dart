import 'dart:math';

import 'package:flutter/material.dart';
import 'package:untitled1/screens/result_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double height = 100.0;
  int weight = 85;
  int age = 23;
  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.black, Color(0xff2a003f)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 15.0, top: 12),
          child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                const  Text(
                    'BMI CALCULATOR',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w900),
                  ),
                const  SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isMale = true;
                            });
                          },
                          child: Container(
                            padding:const  EdgeInsets.symmetric(horizontal: 45),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: isMale
                                  ? const Color(0xffffca00)
                                  : Colors.grey,
                            ),
                            child: Column(
                              children: [
                                Image.network(
                                  'https://cdn-icons-png.flaticon.com/512/44/44483.png',
                                  height: 120,
                                ),
                                const Text(
                                  'Male',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w800),
                                ),
                                const SizedBox(
                                  height: 8,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                isMale = false;
                              });
                            },
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: isMale ? Colors.grey : Color(0xffffca00),
                              ),
                              child: Column(
                                children: [
                                  Image.network(
                                    'https://cdn-icons-png.flaticon.com/512/4086/4086123.png',
                                    height: 120,
                                  ),
                                  const Text(
                                    'Female',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 18,
                        ),
                        const Text(
                          'Height',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w900),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          '${height.round()}',
                          style:const TextStyle(
                            fontSize: 35,
                            color: Color(0xff4e0471),
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Slider(
                          activeColor: Color(0xff4e0471),
                          thumbColor: Colors.yellow,
                          value: height,
                          onChanged: (value) {
                            setState(() {
                              height = value;
                            });
                          },
                          min: 60,
                          max: 260,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 90,
                            decoration: const BoxDecoration(
                              color: Color(0xff4e0471),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(28),
                                  bottomLeft: Radius.circular(28)),
                            ),
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                icon: Icon(
                                  Icons.remove,
                                  size: 55,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 90,
                            color: Colors.white,
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text(
                                  'Weight',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900),
                                ),
                                Text('$weight',
                                    style: const TextStyle(
                                      fontSize: 32,
                                      color: Color(0xff4e0471),
                                      fontWeight: FontWeight.w800,
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 90,
                            decoration: const BoxDecoration(
                              color: Color(0xff4e0471),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(28),
                                  bottomRight: Radius.circular(28)),
                            ),
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                icon: Icon(
                                  Icons.add,
                                  size: 55,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color(0xff4e0471),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(24),
                                  bottomLeft: Radius.circular(24)),
                            ),
                            height: 70,
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                icon: Icon(
                                  Icons.remove,
                                  size: 55,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [Color(0xffffca00), Colors.white],
                            )),
                            height: 70,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('Age',
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w900)),
                                Text(
                                  '$age',
                                  style: const TextStyle(
                                    fontSize: 27,
                                    color: Color(0xff4e0471),
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 70,
                            decoration: const BoxDecoration(
                              color: Color(0xff4e0471),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(24),
                                  bottomRight: Radius.circular(24)),
                            ),
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                icon: Icon(
                                  Icons.add,
                                  size: 55,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {
                      var result = weight / pow(height / 100, 2);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResultScreen(
                              age: age,
                              isMale: isMale,
                              result: result.round(),
                            ),
                          ));
                    },
                    child: const CircleAvatar(
                      backgroundColor: Color(0xff4e0471),
                      radius: 66,
                      child: CircleAvatar(
                        backgroundColor: Color(0xffffca00),
                        radius: 60,
                        child: Text(
                          'Calculate',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 22),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
