
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToggleButtonScreen extends StatefulWidget{
  const ToggleButtonScreen({super.key});

  @override
  _ToggleButtonScreen createState() => _ToggleButtonScreen();

}

class _ToggleButtonScreen extends State<ToggleButtonScreen>{
  bool _currentState= false;
  @override
  Widget build(BuildContext context) {
   return SizedBox(
     height: double.infinity,
     width: double.infinity,
     child: Column(
       children: [
         Switch(value: _currentState,
             onChanged: (value){
           setState(() {
             _currentState = value;
           });
             }),
         SizedBox(height: 20,),
         customToggleButton(_currentState, (p0) => {
           setState((){
             _currentState = p0;
           })
         })
       ],
     ),
   );
  }

}

Widget customToggleButton(
    bool selected,
    Function(bool) onValueChange
    ){
  return InkWell(
    onTap: (){
      onValueChange(!selected);
    },
    child: Container(
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        color: selected ? Colors.pink : Colors.pink.shade100 ,
      ),
      child: Stack(
        alignment: selected ? Alignment.topRight : AlignmentDirectional.topStart,
        children: [
          customWhiteCircle()
        ],
      ),
    ),
  );
}

Widget customWhiteCircle(){
  return Padding(
    padding: EdgeInsets.all(5),
    child: Container(
      width: 20,
      height: 20,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
    ),
  );
}