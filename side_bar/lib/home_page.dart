import 'dart:async';

import 'package:flutter/material.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isConnectedToInternet = false;
  StreamSubscription? _InternetConnectionStreamSubscription;
  @override
  void initState() {
    super.initState();
    _InternetConnectionStreamSubscription =
    InternetConnection().onStatusChange.listen((event){
      print(event);
      switch (event) {
        case InternetStatus.connected: 
         setState(() {
          isConnectedToInternet = true;
        });     
          break;
           case InternetStatus.disconnected:   
            setState(() {
          isConnectedToInternet = false;
        });   
          break;
        default:
        setState(() {
          isConnectedToInternet = false;
        });
        
        break;
      }
    });
  }
 @override
  void dispose() {
    _InternetConnectionStreamSubscription?.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(isConnectedToInternet? Icons.wifi : Icons.wifi_off,
            size: 50,color: isConnectedToInternet? Colors.green:Colors.red,
            ),
            Text(isConnectedToInternet? "You are Connected to the Internet." 
            : "You are not Connected to the Internet.",
            ),
          ],
        ),
      ),
    );
  }
}