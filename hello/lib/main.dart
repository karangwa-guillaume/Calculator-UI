import 'package:flutter/material.dart';

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
            child: Text(style: TextStyle(fontSize: 24,fontWeight:FontWeight.bold,color: Colors.white),"Welcome To My First MobileApp!")
            ),
            backgroundColor: Color.fromARGB(255, 4, 153, 68),
            ),
            body: Container(
                  constraints: BoxConstraints.expand(
                    height: Theme.of(context).textTheme.headlineMedium!.fontSize! * 1.1 + 200.0,
                  ),
                   padding: const EdgeInsets.all(8.0),
                    color: Colors.blue[600],
                     alignment: Alignment.center,
                     transform: Matrix4.rotationZ(0.1),
                     child: Text('Hello World',
                     style: Theme.of(context)
                     .textTheme
                     .headlineMedium!
                      .copyWith(color: Colors.white)),
                )
                // backgroundColor: Color.fromARGB(255, 131, 194, 118),
              ),
  );
  }
}

