import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp( 
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Welcome to cat selling MobileApp!")
            ),
            backgroundColor: Colors.deepPurple[400],
            ),
            body: const Center(
              child: Image(
                image: AssetImage('images/guillaume vote.jpg'),
                ),
                 child: Text("Hello World!!"),
              ),
  backgroundColor: Colors.deepPurpleAccent,
  ),
  ),
  );
}

