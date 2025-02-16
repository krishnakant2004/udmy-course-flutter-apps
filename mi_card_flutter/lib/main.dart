import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.teal,
//         body: SafeArea(
//           ////use SafeArea widget for displaying content on safe area of screen.
//           child: Center(
//             child: IntrinsicHeight(
//               child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                 mainAxisSize: MainAxisSize.max,
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: <Widget>[
//                   ElevatedButton(onPressed: (){}, child: Text('hello'),),
//                     ElevatedButton(onPressed: (){}, child: Text('hello world')),
//                     ElevatedButton(onPressed: (){}, child: Text('hello world by\n krishnakant'))
//                   ]),
//             ),
//           ), //container //container take large area as possible when child not present untile constraints not given.
//         ),
//       ),
//     );
//   }
// }

//CHALLENGE MI_CARD_FLUTTER

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.teal,
//         body: SafeArea(
//           child: Container(
//             height: 780,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(width: 100.0,height: double.infinity,color: Colors.red,),
//                 Column(
//                   mainAxisSize: MainAxisSize.max,
//                   mainAxisAlignment: MainAxisAlignment.center,
//
//                   children: [
//                   Container(width: 100,height: 100,color: Colors.yellow,),
//                   Container(width: 100,height: 100,color: Colors.green,)
//                 ],),
//                 Container(width: 100.0,height: double.infinity,color: Colors.blue,)
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// simple login

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            'M E T A V E R S E',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
          ),
        ),
        body: Column(
         // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onLongPress: () {
                print("hello");
              },
              onTap: (){
                print("i am krishnakant");
              },
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/7113952/pexels-photo-7113952.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              ),
            ),
            Text(
              'Krishnakant',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                  color: Colors.white,
                  fontFamily: 'Pacifico'),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontFamily: 'Source Code Pro',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.teal.shade100,
                letterSpacing: 3.2,
              ),
            ),
            SizedBox(
              height: 10,
              width: 150,
              child: Divider(
                color: Colors.teal[100],
              ),
            ),
           Card(
             color: Colors.white,
             margin: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
             child: ListTile(
               leading: Icon(
                 Icons.phone,
                 size: 25.0,
                 color: Colors.teal[900],
               ),
               title: Text(
                 '+91 983 3456 245',
                 style: TextStyle(
                     fontFamily: 'Source Code pro',
                     fontSize: 20,
                     fontWeight: FontWeight.bold,
                     color: Colors.teal[800]
                 ),
               ),

             ),
           ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
              child:ListTile(
                leading: Icon(
                  Icons.email,
                  size: 25.0,
                  color: Colors.teal[800],
                ),
                title:Text(
                  'krishna@gmail.com',
                  style: TextStyle(
                      fontFamily: 'Source Code pro',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.teal[900]
                  ),
                ) ,
              ) ,
            ),
          ],
        ),
      ),
    );
  }
}

