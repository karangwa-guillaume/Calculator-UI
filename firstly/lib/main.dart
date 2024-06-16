import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp( MyWidget() );
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Welcome to cat selling MobileApp!")
            ),
            backgroundColor: Colors.deepPurple[400],
            ),
            body: const Center(            
                  child: Text("Hello World!!"),
                ),
                 backgroundColor: Colors.deepPurpleAccent,
              ),
  );
  }
}
