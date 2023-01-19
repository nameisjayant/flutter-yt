
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldLayout extends StatefulWidget{
  const TextFieldLayout({super.key});

  @override
  _TextFieldLayout createState() => _TextFieldLayout();

}

class _TextFieldLayout extends State<TextFieldLayout>{
  TextEditingController username = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("TextField Layout"),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: ListView(
              children: [
                TextField(
                  onChanged: (val){
                   setState(() {
                     username.text = val;
                   });
                  },
                  controller: username ,
                  keyboardType: TextInputType.phone,
                  textCapitalization: TextCapitalization.words,
                ),
                SizedBox(height: 20,),
                Text("Hey ${username.text}")
              ],
            ) ,
          ),
        ),
      ),
    );
  }

}