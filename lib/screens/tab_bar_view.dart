
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarViewScreen extends StatelessWidget{
  const TabBarViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child:  Scaffold(
          appBar: AppBar(
            title: const Text("TabBar View"),
            bottom: TabBar(tabs: [
              Tab(icon: Icon(Icons.home),),
              Tab(icon: Icon(Icons.video_settings),),
              Tab(icon: Icon(Icons.image),)
            ],
              indicatorColor: Colors.red,
              indicatorWeight: 10,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.red
              ),
            ),
          ),
          body: TabBarView(children: [
            Icon(Icons.home,size: 250,),
            Icon(Icons.video_settings,size: 250,),
            Icon(Icons.image,size: 250,)
          ]),
        ),
      )
    );
  }
  
}