import 'package:flutter/material.dart';

class AppBarScreen extends StatelessWidget {
  const AppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text("Flutter App"),
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.file_copy))
          ],
          backgroundColor: Colors.red,
          centerTitle: false,
        ),
      ),
    );
  }
}
