
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          backgroundColor: Colors.red,
          elevation: 0,
          title: const Text("My App"),
          leading: const Icon(Icons.arrow_back_ios) ,
          actions: [
            const Icon(Icons.alarm),
            const Icon(Icons.alarm)
          ],
        ),
        body: Text("Hello world"),
        floatingActionButton: FloatingActionButton(
            onPressed: (){},
          child: Icon(Icons.add),
        ),
      ),
    );
  }

}