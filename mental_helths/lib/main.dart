import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.blue,
            bottomNavigationBar: BottomNavigationBar(
              elevation: 10,
              iconSize: 25,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.message),label: 'Message'),
                BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: 'profile'),
              ],),
            body: Column(
              children:[
                Padding(
                padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hi, Krishnakant!',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              '2 june,2024',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.blue[100],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.blue[300],
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[300],
                        borderRadius: BorderRadius.circular(15), // Circular border
                      ),
                      child: ListTile(
                        leading: Icon(Icons.search,size: 30,color: Colors.white,),
                        title: Text('search',style: TextStyle(color: Colors.white,fontSize: 20),),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("How do you fell?",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                        Icon(Icons.more_horiz,color: Colors.white,size: 30,)
                      ],
                    ),
                   SizedBox(height: 15,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       emojies(em: '😔',mess: 'Badly',),
                       emojies(em:'😊' ,mess: 'FIne',),
                       emojies(em: '😁',mess: 'Well',),
                       emojies(em:'😄',mess: 'Excellent',),
                     ],
                   ),
                    SizedBox(height: 15,),

                  ],
                ),
              ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15),),
                      color: Colors.white,
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Exercises',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                              Icon(Icons.more_horiz,color: Colors.black,size: 30,)
                            ],
                          ),
                          SizedBox(height: 15,),
                          Expanded(
                            child: ListView(
                              children: [
                                excersise(icon: Icons.favorite,title: 'Speaking skills',subtitle: '16 Excercise',color:Color(0xFF1F2544),),
                                excersise(icon: Icons.account_circle,title: 'Data science',subtitle: '16 Excercise',color: Colors.deepPurple,),
                                excersise(icon: Icons.supervised_user_circle,title: 'Machine learning',subtitle: '16 Excercise',color: Color(0xFFD20062),),
                                excersise(icon: Icons.favorite,title: 'Deep learning',subtitle: '16 Excercise',color: Color(0xFF003C43),),
                                excersise(icon: Icons.favorite,title: 'AI',subtitle: '16 Excercise',color: Color(0xFF050C9C),),
                                excersise(icon: Icons.favorite,title: 'Robotics',subtitle: '16 Excercise',color: Color(0xFF240750),),
                                excersise(icon: Icons.favorite,title: 'Data Analytics',subtitle: '16 Excercise',color: Color(0xFF640D6B),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ]
            ),
          ),
        ));
  }
}

class excersise extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;
  final String subtitle;
  const excersise({
    super.key,
    required this.icon,
    required this.color,
    required this.title,
    required this.subtitle
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 0.2,
            blurRadius: 10,
          )
        ]
      ),
      child: ListTile(
        leading: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(color: color,borderRadius: BorderRadius.all(Radius.circular(15),),
          ),
          child: Icon(icon,size: 30,color: Colors.white,),

        ),
        title: Text(title,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
        subtitle: Text(subtitle,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
        trailing: Icon(Icons.more_horiz,size: 30,),
        //onTap: ,
      ),
    );
  }
}

class emojies extends StatelessWidget {
  final String em,mess;
  const emojies({
    super.key,
    required this.em,
    required this.mess
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue[400],
            borderRadius: BorderRadius.circular(15),
          ),
          padding: EdgeInsets.all(12  ),
          child: Text(em,style: TextStyle(fontSize: 28),),
        ),
        SizedBox(height: 5,),
        Text(mess,style: TextStyle(color: Colors.white,fontSize: 12),)
      ],
    );
  }
}


