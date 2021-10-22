import 'dart:math';

import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(
    title: "Awesome App",
    home: MyApplication(),
  ));
}

class MyApplication extends StatefulWidget {
  const MyApplication({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyApplication();
  }
}

class _MyApplication extends State<MyApplication> {
  List<String> restaurent = [
    "pizza hut",
    "McDonald's",
    "Olive Garden",
    "KFC",
    "Panda Express"
  ];

  int currentIndex = -1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment : MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
      const Text("Random Food restaurent Ficker"),
      if(currentIndex != -1)
        Text(restaurent[currentIndex],
            style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold)),
          Padding(padding: EdgeInsets.only(top:50)),
          FlatButton(onPressed : (){
              updateIndex();
          },color:Colors.purple,child:const Text("Change Now"),textColor:Colors.white)
    ]),
            )));
  }

  void updateIndex() { 
    final index = Random().nextInt(restaurent.length);
    setState(() {
      currentIndex = index;
    });
  }

}
