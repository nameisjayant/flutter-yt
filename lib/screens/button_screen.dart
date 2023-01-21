
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonLayout extends StatelessWidget{
  const ButtonLayout({super.key});

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
            ElevatedButton(onPressed: (){},
                child: Text("Elevated Button"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                shadowColor: Colors.red,
                elevation: 1,
                minimumSize: Size(double.infinity, 50),
                side: BorderSide(
                  color: Colors.black,
                  width: 5
                )
              ),
            ),
            SizedBox(height: 10,),
            OutlinedButton(onPressed: (){}, child: Text("Outlined Button"),
              style: OutlinedButton.styleFrom(),
            ),
            SizedBox(height: 10,),
            TextButton(onPressed: (){}, child: const Text("Text Button"))
          ],
        ),
      )
    );
  }

}