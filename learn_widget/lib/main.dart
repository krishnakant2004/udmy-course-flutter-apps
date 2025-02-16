import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: userlogin(),
    );
  }
}

class userlogin extends StatefulWidget {

  const userlogin({super.key});

  @override
  State<userlogin> createState() => _userloginState();
}

class _userloginState extends State<userlogin> {
  final TextEditingController _username=TextEditingController();

  final TextEditingController _userpass=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
          ),
          Text(
            'Login Here!',
            style: TextStyle(
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          textfields(
            controller: _username,
            icon: Icons.email,
            str: 'Username',
          ),
          SizedBox(
            height: 10,
          ),
          textfields(
            controller: _userpass,
            obscureText: true,
            icon: Icons.key,
            str: 'password',
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
              onPressed: () {
                print('usename: $_username ,password: $_userpass');
              },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black87),

              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),),),
            ),
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white.withOpacity(1), fontSize: 18),
              ),),
        ],
      ),
    );
  }
}

class textfields extends StatefulWidget {

  final IconData icon;
  final String str;
  final TextEditingController controller;
  final bool obscureText;

   const textfields({super.key,
    required this.icon,
    required this.str,
    this.obscureText=false,
    required this.controller
  });

  @override
  State<textfields> createState() => _textfieldsState();
}

class _textfieldsState extends State<textfields> {
  bool _ispassword=true;
  @override
  void initState(){
    super.initState();
    _ispassword=widget.obscureText;
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25, left: 25),
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black38,
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  spreadRadius: 1,
                  blurRadius: 4,
                )
              ]),
          child: TextField(
            onChanged: (value){
              setState(() {
                if(value.isEmpty){
                  widget.controller.clear();
                }
              });
            },
            cursorColor: Colors.white,
            style: TextStyle(color: Colors.white),
            controller: widget.controller,
            obscureText: _ispassword,
            decoration: InputDecoration(
              suffixIcon: widget.obscureText ? IconButton(
                onPressed: (){
                  setState(() {
                    _ispassword=!_ispassword;
                  });
                },
                icon: Icon(_ispassword ?  Icons.visibility_off:Icons.visibility ,color: Colors.white.withOpacity(0.7),),):null,
              prefixIcon: Icon(
                widget.icon,
                color: Colors.white.withOpacity(0.7),
              ),
              label: Text(
                widget.str,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white.withOpacity(0.3),
                ),
              ),
              fillColor: Colors.black38,
              filled: true,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: Colors.black38,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  width: 1,
                  color: Colors.black38,
                ),
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.orange,
                  )),
            ),
          )),
    );
  }
}
