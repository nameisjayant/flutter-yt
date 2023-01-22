
import 'package:demo_yt/screens/app_bar.dart';
import 'package:demo_yt/screens/bottom_navigation_bar.dart';
import 'package:demo_yt/screens/bottom_sheet.dart';
import 'package:demo_yt/screens/button_screen.dart';
import 'package:demo_yt/screens/checkbox_screen.dart';
import 'package:demo_yt/screens/dialog_screen.dart';
import 'package:demo_yt/screens/floating_action_button.dart';
import 'package:demo_yt/screens/layout_screen.dart';
import 'package:demo_yt/screens/listview_and_list_tile.dart';
import 'package:demo_yt/screens/navigation_drawer.dart';
import 'package:demo_yt/screens/radio_button.dart';
import 'package:demo_yt/screens/tab_bar_view.dart';
import 'package:demo_yt/screens/textfield_screen.dart';
import 'package:demo_yt/screens/toggle_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ListView  screen"),
        ),
        body: const ListViewScreen() ,
      ),
    );
  }

}
