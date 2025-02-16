import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
          title: Text(
            "i am poor",
            style: TextStyle(
              //color: Colors.blueAccent,
             // backgroundColor: Colors.white,
              color: Colors.lightBlueAccent,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            child: Center(
              child: Container(
                height: 200,
                width: 200,
                child: Image(
                  // image: AssetImage(
                  //   'image/diamond.png'
                  // ),
                  image:NetworkImage(
                    'https://images.pexels.com/photos/46801/coal-briquette-black-46801.jpeg?auto=compress&cs=tinysrgb&w=600'
                      ),
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
