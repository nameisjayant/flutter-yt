
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogBoxScreen extends StatelessWidget{
  const DialogBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          showDialog(context: context,
              builder: (context){
            return simpleAlertDialog();
              });
        },
        child: const Text("Open Dialog"),
      ),
    );
  }
}

Widget simpleAlertDialog(){
  return AlertDialog(
    title: const Text("Exit the App",textAlign: TextAlign.center,),
    icon: Icon(Icons.exit_to_app,size: 50,),
    content: const Text("Are you sure to exit the app?",textAlign: TextAlign.center,),
    actions: [
      TextButton(onPressed: (){}, child: Text("Yes")),
      TextButton(onPressed: (){}, child: Text("No")),
    ],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(16))
    ),
    alignment: AlignmentDirectional.topStart,
  );
}

Widget simpleDialogBox(){
  return Dialog(
    child: Padding(
      padding: EdgeInsets.all(20),
      child: SizedBox(
        width: double.infinity,
        height: 280,
        child: Column(
          children: [
            Text("Exit App"),
            Icon(Icons.exit_to_app,size: 200,),
            Row(
              children: [
                TextButton(onPressed: (){}, child: Text("Yes")),
                Spacer(),
                TextButton(onPressed: (){}, child: Text("No")),
              ],
            )
          ],
        ),
      )
    ),
    backgroundColor: Colors.orange,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(16))
    ),
    alignment: Alignment.bottomCenter,
  );
}