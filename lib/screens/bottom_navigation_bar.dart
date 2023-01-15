
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationScreen extends StatefulWidget{
  
  @override
  BottomNavigationWidget createState() => BottomNavigationWidget();

}

class BottomNavigationWidget extends State<BottomNavigationScreen>{

  int _currentIndex = 0;

  final List<Widget> _widget = <Widget>[
    const Icon(Icons.home,size: 250,),
    const Icon(Icons.video_settings,size: 250,),
    const Icon(Icons.image,size: 250,)
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:  const Text("BottomNavigation Screen"),
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.video_settings),label: "Videos"),
          BottomNavigationBarItem(icon: Icon(Icons.image),label: "Images")
        ],
          currentIndex: _currentIndex ,
          onTap: _updateIndex ,
        ),
        body: Center(
          child: _widget[_currentIndex],
        ),
      ),
    );
  }

  void _updateIndex(int index){
    setState(() {
      _currentIndex = index;
    });
  }

}