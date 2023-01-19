import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Layout screen"),
        ),
        body: const LayoutWidget(),
      ),
    );
  }
}

class LayoutWidget extends StatelessWidget {
  const LayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: stackLayout(),
    );
  }
}

Widget columnLayout() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [Text("Hello one"), Text("Hello two"), Text("Hello three")],
  );
}

Widget rowLayout() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [Text("Hello one"), Text("Hello two"), Text("Hello three")],
  );
}

Widget stackLayout() {
  return Stack(
    alignment: AlignmentDirectional.center,
    children: const [
      Positioned(
        top: 10,
        child: Text("Hello one"),
      ),
      Positioned(child: Text("Hello two"),bottom: 20,),
      Text("Hello threesddsddd")
    ],
  );
}
