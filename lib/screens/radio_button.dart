
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadiButtonScreen extends StatefulWidget{
  const RadiButtonScreen({super.key});

  @override
  _RadioButtonScreen createState() => _RadioButtonScreen();
}

enum Gender{
  Male,
  Female
}

class _RadioButtonScreen extends State<RadiButtonScreen>{

  List<String> _list = <String>[
    "Appple",
    "Orange",
    "banana",
    "pineapple"
  ];
  String _currentValue = "Appple";

  @override
  Widget build(BuildContext context) {
    return Padding(padding :  EdgeInsets.all(20),
      child: Column(
        children: [
           for(int i=0;i<_list.length;i++)
             customRadioButton(_list[i], _currentValue, (p0) => {
               setState((){
                 _currentValue = p0;
               })
             })
        ],
      ),
    );
  }

}

Widget customRadioButton(
    String value,
    String groupValue,
    Function(String) onValueChange
    ){
  return  Radio(value: value,
      groupValue: groupValue,
      onChanged: (data){
        onValueChange(data!);
      });
}