//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<int> l0=[1,2,3,4,5,6,7];
  List<String> l1=['mohan','krishnakant','vinay','deveraj','arjun','satyam','deepanshu'];
  List<String> l2=['hi','hello','how are you','kaha ho','hello arjun','monu','kab ana he'];
  Color con_color=Colors.white;
  Color h_color=Colors.blue;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          backgroundColor: Color(0xFF9b3dd3),
          title: Text('T E S T'),
          titleTextStyle: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color(0xFF44bd32),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: ListView.builder(
                  itemCount: l1.length,
                  itemBuilder:(context, index) {
                    return custom_Listile(s1:l0[index],s2:l1[index],s3:l2[index]);
                  },
              ),
            ),
            const SizedBox(
              height: 20,
              width: double.infinity,
              child: Center(child: Text('Listview.builder',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
            Expanded(
              flex: 1,
              child: ListView.separated(
                itemCount: l1.length,
                itemBuilder: (context, index) {
                  return custom_Listile(s1:l0[index],s2:l1[index],s3:l2[index]);
                },
                  separatorBuilder: (context, index) {
                return Divider(
                  height: 10,
                  thickness: 1,
                  color: Colors.white,
                  endIndent: 10,
                  indent: 10,
                );
              },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class custom_Listile extends StatelessWidget {
  final String s2,s3;
  final int s1;
  const custom_Listile({super.key,required this.s1,required this.s2,required this.s3});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 5,top: 5,bottom: 5),
      color: Color(0xFF272727),
      elevation: 2,
      shadowColor: Colors.white,
      child: ListTile(
        //contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),  //use for custom ListTile size.
        leading: CircleAvatar(
          radius: 40,
          child: Text(s1.toString()),
        ),
        title: Text(s2,style: TextStyle(fontSize: 25,color: Colors.white),),
        subtitle: Text(s3,style:TextStyle(fontSize: 20,color:Colors.white),),
        trailing: IconButton(onPressed: (){}, icon: Icon(Icons.add,size: 25,)),
      ),
    );
  }
}
