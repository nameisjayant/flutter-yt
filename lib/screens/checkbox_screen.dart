import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckboxScreen extends StatefulWidget {
  const CheckboxScreen({super.key});

  @override
  _CheckBoxScreen createState() => _CheckBoxScreen();
}

class _CheckBoxScreen extends State<CheckboxScreen> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.scale(
                scale: 1.8,
                child: Checkbox(value: selected,
                  onChanged: (value){
                    setState(() {
                      selected = value!;
                    });
                  },
                  activeColor: Colors.red,
                  overlayColor: MaterialStateProperty.all(Colors.yellow),
                  checkColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))
                  ),
                ),
              ),
              SizedBox(height: 10,),
              CheckboxListTile(value: selected, onChanged: (value){
                setState(() {
                  selected = value!;
                });
              },
                title: const Text("Check box title"),
              )
            ],
          )
        ));
  }
}
