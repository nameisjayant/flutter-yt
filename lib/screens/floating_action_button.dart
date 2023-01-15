
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FloatingActionScreen extends StatefulWidget{
  
  @override
  _FloatingActionWidget createState() => _FloatingActionWidget();
  
}

class _FloatingActionWidget extends State<FloatingActionScreen>{

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Floating Action Button"),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          setState(() {
           // counter ++ ;
            _increment();
          });
        },
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Center(
          child:  Text("$counter",style: TextStyle(fontSize: 40),),
        ),
      ),
    );
  }

  void _increment(){
    setState(() {
      counter ++;
    });
  }
}