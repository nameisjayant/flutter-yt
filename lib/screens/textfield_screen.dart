
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldLayout extends StatefulWidget{
  const TextFieldLayout({super.key});

  @override
  _TextFieldLayout createState() => _TextFieldLayout();
}

class _TextFieldLayout extends State<TextFieldLayout>{
  TextEditingController _username = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child:  Center(
        child: TextField(
          controller: _username,
          onChanged: (text){
            print(text);
          },
          textCapitalization: TextCapitalization.words,
          textInputAction: TextInputAction.done,
          style: TextStyle(
            fontSize: 20,
            color: Colors.red
          ),
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.person),
            suffix: Icon(Icons.check),
            hintText: "Enter username",
            border: UnderlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
                width: 5
              )
            )
          ),
        ),
      ),
    );
  }

}