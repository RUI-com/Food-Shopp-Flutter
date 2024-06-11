// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/home_page.dart';
import 'package:flutter_application_1/utils/colors.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColors,
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Image.asset(
            "assets/img/fourth.png",
            height: 250,
            width: 250,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Fast delievery at \n your doorstep",
              style: TextStyle(
                height: 1.2,
                fontWeight: FontWeight.bold,
                fontSize: 35,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Home delievery and online reservation \n system for rstaurants & cafe",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: double.infinity,
            height: 55,
            margin: const EdgeInsets.all(20),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text(
                  "Let's Explore",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: primaryColors,
                  ),
                )),
          )
        ],
      )),
    );
  }
}
