// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';

class HeaderParts extends StatefulWidget {
  const HeaderParts({super.key});
  @override
  State<HeaderParts> createState() => _HeaderPartsState();
}

int indexCategory = 0;

class _HeaderPartsState extends State<HeaderParts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        topHeader(),
        SizedBox(
          height: 25,
        ),
        title(),
        SizedBox(
          height: 20,
        ),
        searchBar(),
        SizedBox(
          height: 20,
        ),
        categorySelection(),
      ],
    );
  }

  Padding categorySelection() {
    // list of times
    List list = ["All", "Fruits", "Vegetables", "Grocery"];
    return Padding(
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: SizedBox(
        height: 20,
        child: ListView.builder(
            itemCount: list.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    indexCategory = index;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 15,
                      right: 10,
                    ),
                    child: Text(
                      list[index],
                      style: TextStyle(
                        fontSize: 18,
                        color: indexCategory == index
                            ? primaryColors
                            : Colors.black45,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }

  Container searchBar() {
    return Container(
      height: 55,
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          color: Colors.green[50], borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Expanded(
              child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: primaryColors,
                ),
                hintText: "Sarch food",
                hintStyle: TextStyle(color: Colors.black26)),
          )),
          Material(
            color: primaryColors,
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                child: Icon(
                  Icons.insert_emoticon_sharp,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding title() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hi Nabin",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: primaryColors,
                fontSize: 18),
          ),
          Text(
            "Find your food",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 34),
          ),
        ],
      ),
    );
  }

  Padding topHeader() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          // Menu
          Material(
            color: Colors.green,
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                child: Icon(Icons.menu_open_sharp, color: Colors.white),
              ),
            ),
          ),
          Spacer(),
          // For location
          Icon(
            Icons.location_on,
            color: primaryColors,
            size: 18,
          ),
          Text(
            "SKT Nepal",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black38,
            ),
          ),
          Spacer(),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "assets/img/sir.png",
              height: 40,
              width: 40,
            ),
          )
        ],
      ),
    );
  }
}
