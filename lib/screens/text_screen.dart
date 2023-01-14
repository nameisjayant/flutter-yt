
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextScreen extends StatelessWidget{
  const TextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: TextWidget(),
      ),
    );
  }

}

class TextWidget extends StatelessWidget{

  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Hello world sddj\njccdliidhey",
        style: TextStyle(
          fontSize: 40,
          color: Colors.red,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          letterSpacing: 5,
          decoration: TextDecoration.overline,
          decorationStyle: TextDecorationStyle.double,
          decorationColor: Colors.black,
        ),
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.end,
      ),
    );
  }

}