// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HorVerScrolling extends StatefulWidget {
  const HorVerScrolling({super.key});

  @override
  State<HorVerScrolling> createState() => _HorVerScrollingState();
}

class _HorVerScrollingState extends State<HorVerScrolling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: Text(
          'Horizontal_Vertical Scrolling',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      //for horizontal scrolling..
      body: Column(children: [
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.red,
                ),
              );
            },
          ),
        ),
        //for vertical scrolling..
        Expanded(
            child: ListView.builder(
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                color: Colors.green,
              ),
            );
          },
        ))
      ]),
    );
  }
}
