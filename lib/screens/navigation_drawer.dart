
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final _key = GlobalKey<ScaffoldState>();

class NavigationDrawerScreen extends StatelessWidget{
  const NavigationDrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: _key,
        appBar: AppBar(
          title: const Text("Navigation Drawer"),
          leading: IconButton(onPressed: (){
            _key.currentState?.openDrawer();
          },icon: const Icon(Icons.menu),),
        ),
        drawer: Drawer(
          backgroundColor: Colors.grey,
          child: ListView(
            padding: EdgeInsets.zero,
            children:  const [
              DrawerHeader(decoration: BoxDecoration(
                color: Colors.blue
              ),child: Center(
                child: Text("Drawer Header"),
              ),),
              ListTile(title: const Text("title one"),),
              ListTile(title: const Text("title two"),),
              ListTile(title: const Text("title three"),)
            ],
          ),
        ),
        drawerEnableOpenDragGesture: false,
      ),
    );
  }
  
}