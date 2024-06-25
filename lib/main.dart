import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

@override
State<MyApp> create() => _MyAppState();
void main() {
  runApp( MyApp());
}

class _MyAppState extends State<MyApp> {
   MyApp({Key? key}) : super(key: key);
  String buttonName = 'Click';
  int currentIndex = 0;
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Title'),
        ),
        body: const Center(
          child: Container(
           color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton( 
                  style: ElevatedButton.styleFrom(
                    onPrimary:Color.red,
                    primary: Colors.orange
                  ),
                  onPressed: () {
                setState(() {
                   buttonName = 'Clicked';
                });
                }, 
                child: Text(buttonName),
                ),
                ElevatedButton(onPressed: () {
                  setState(() {
                    buttonName = 'Clicked';
                  });
                },  
                child: Text(buttonName),
                }),
            ),
          ),
          ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home),
              ),
              BottomNavigationBarItem(
                label: 'Settings'
              icon: Icon(Icons.settings)
              )
              ],
              currentIndex: 0,
              onTap: (int index){
              setState( {
              currentIndex = index;
            }); 
              },
        ),
      ),
    );
  }
}
