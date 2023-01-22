
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget{
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for(int i=0;i<30;i++)
          Padding(padding: EdgeInsets.all(10),
            child: listTileContent(i),
            ),
      ],
      scrollDirection: Axis.vertical,
      reverse: false,
    );
  }

}

Widget listTileContent(int index){
  return ListTile(
    leading: Icon(Icons.person_add),
    title:  Text("Tile $index"),
    subtitle: Text("Sub title $index"),
    trailing: Icon(Icons.more_vert_outlined),
    horizontalTitleGap: 2,
    dense: true,
  );
}