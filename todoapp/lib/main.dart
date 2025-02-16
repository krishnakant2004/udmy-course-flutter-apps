import 'package:flutter/material.dart';
import 'package:todoapp/Item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TODO APP',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'TODO List'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Items> items = [];

  @override
  Widget build(BuildContext context) {
    Widget body = const Center(
      child: Text("your cart is empty"),
    );
    if (items.isNotEmpty) {
      body = ListView.builder(
        itemBuilder: (context, index) => Card(
          child: Column(
            children: [
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    "itemName",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.black.withOpacity(0.7)),
                  ),
                  const Spacer(),
                  Text(
                    "Money",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black.withOpacity(0.7)),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    items[index].itemname,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                  const Spacer(),
                  Text(
                    items[index].paymoney.toString(),
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                ],
              ),
              Text(items[index].date),
            ],
          ),
        ),
        itemCount: items.length,
      );
    }
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
              ))
        ],
        bottom: PreferredSize(
            preferredSize: const Size(40, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton.icon(onPressed: () {}, label: const Text("Filter")),
              ],
            )),
        title: Text(widget.title),
      ),
      body: body,
    );
  }
}
