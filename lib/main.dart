// ignore_for_file: avoid_print, duplicate_ignore, prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Center(child: Text('Dicee')),
          backgroundColor: Colors.amber,
        ),
        body: const Dicepage(),
      ),
    ),
  );
}

class Dicepage extends StatefulWidget {
  const Dicepage({super.key});

  @override
  State<Dicepage> createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int leftDiceNo = 1;
  int rightDiceNo = 3;
  int sum = 0;
  void dice() {
    rightDiceNo = Random().nextInt(6) + 1;
      leftDiceNo = Random().nextInt(6) + 1;
    setState(() {
      
      sum = rightDiceNo + leftDiceNo;
    
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: InkWell(
                  // onTap: () {
                  //   setState(() {
                  //     leftDiceNo = Random().nextInt(6) + 1;
                  //   });
                  // },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset('images/dice$leftDiceNo.png',
                        color: Colors.amber),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  // onTap: () {
                  //   setState(() {
                  //     rightDiceNo = Random().nextInt(6) + 1;
                  //   });
                  // },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset(
                      'images/dice$rightDiceNo.png',
                      color: Colors.amber,
                    ),
                  ),
                ),
              )
            ],
          ),
          Text('sum of numbers is $sum',
          style: TextStyle(fontFamily: 'DancingScript',
          fontSize: 30,),
          ),
          SizedBox(
            height: 5,
          ),
          TextButton(
              onPressed: () {
                dice();
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10)),
                width: 150,
                height: 50,
                // ignore: prefer_const_constructors
                child: Center(
                  child: Text(
                    'click',
                    // ignore: prefer_const_constructors
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
