
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomsheetScreen extends StatelessWidget{
  const BottomsheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: const Text("Bottomsheet example"),
       ),
       body:const BottonSheetWidget() ,
     ),
   );
  }
  
}

class BottonSheetWidget extends StatelessWidget{
  const BottonSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: (){
          showModalBottomSheet(
            backgroundColor: Colors.red,
              barrierColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25)
              ),
              context: context,
              builder: (BuildContext context){
                return Center(child:  ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Close")),);
              });
        },
        child: const Text("Open bottomsheet"),
      ),
    );
  }
  
}