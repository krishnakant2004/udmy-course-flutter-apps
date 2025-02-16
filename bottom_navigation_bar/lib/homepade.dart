//import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';
import 'dart:ui';
import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HoneScrren extends StatefulWidget {
  const HoneScrren({super.key});

  @override
  State<HoneScrren> createState() => _HoneScrrenState();
}

class _HoneScrrenState extends State<HoneScrren> {
  int _currentindex=0;


  static const List<Widget> _screens=[
    homepage(str:'Home'),
    homepage(str:'search'),
    chatting(),
    homepage(str:'Creat'),
    homepage(str:'profile'),
  ];

  void _ontapped(int index){
    setState(() {
      _currentindex=index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    final screensize=MediaQuery.of(context).size;

    return Scaffold(
      body:homepage(str: 'Hello',),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white,),label: 'Home',),
          BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.white,),label: 'search',),
          BottomNavigationBarItem(icon: Icon(Icons.chat),label: 'chatting',),
         // BottomNavigationBarItem(icon: Icon(Icons.add,color: Colors.white,),label: 'Creat',),

          //BottomNavigationBarItem(icon: Icon(Icons.person),label: 'profile',),
        ],
        onTap: _ontapped,
        currentIndex: _currentindex,
        iconSize: 25,
        selectedIconTheme: IconThemeData(color: Colors.purple[300],size: 30),
        unselectedFontSize: 13,
        selectedFontSize: 13,
        backgroundColor: Colors.blueAccent.withOpacity(0.9),
        unselectedItemColor: Colors.white,

      ),
    );
  }
}

class homepage extends StatefulWidget {
final String str;
  const homepage({
    required this.str,
    super.key,

  });

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  static const List<String> _name=['hello','krishnakant','dinkar'];
  String name='hello';
  int index=0;
   _child_ontap(int index){
    if(index> _name.length){
      index=0;
    }
    setState(() {
        name=_name[index];
        print("hello");
        index+=1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: Image.asset("assets/images/backgroundimage.jpg",fit: BoxFit.cover,),),

        Positioned(
          top: 50,
          right: 50,

          child:customcontainer(child_ontap: _child_ontap(index),name: _name[0],color: Colors.blueAccent),
            ),
        // Spacer(),
        Positioned(
          left: 50,
        bottom: 50,
          child:customcontainer(child_ontap: _child_ontap(index),name: _name[0],color: Colors.orange),
        ),
  ]
    );
  }
}

class chatting extends StatelessWidget {
  const chatting({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Text('chatting'),
      );
  }
}

class customcontainer extends StatefulWidget {
  const customcontainer({
    required this.name,
    required this.child_ontap,
    required this.color,
    super.key});

  final String name;
  final color;
  final Function()? child_ontap;

  @override
  State<customcontainer> createState() => _customcontainerState();
}

class _customcontainerState extends State<customcontainer> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10,),
        child: Container(
          height: 200,
          width: 300,
          decoration: BoxDecoration(
            color:  widget.color.withOpacity(0.2),
            borderRadius: BorderRadius.circular(18),
          ),

          child: GestureDetector(
            onLongPress:widget.child_ontap,
            onTap: widget.child_ontap,
            child: Center(
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white.withAlpha(225),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pinkAccent,
                      )
                    ]
                ),
                child: Center(child: Text(widget.name,style: TextStyle(color: Colors.pink,fontSize: 27,fontWeight: FontWeight.bold),)),
              ),
            ),
          ),),
      ),
    );
  }
}
