import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Tab> myTab = [
    Tab(
      text: 'Tab 1',
    ),
    Tab(
      text: 'Tab 2',
    ),
    Tab(
      text: 'Tab 3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        initialIndex: 1,
        length: myTab.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text('My App'),
            bottom: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
              indicator: BoxDecoration(
                color: Colors.green,
                border: Border(
                  top: BorderSide(color: Colors.white, width: 5),
                ),
              ),
              tabs: myTab,
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text(
                  'Tab 1',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              Center(
                child: Text(
                  'Tab 2',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              Center(
                child: Text(
                  'Tab 3',
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
