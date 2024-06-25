import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp( const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({Key? key}) :super(key: key);

   @override
   State<MyApp> createState()=> _MyAppState();
}


class _MyAppState extends State< MyApp > {
   /* TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
 */
 /* Future<void> insertrecord() async{
  if(username.text =="" || email.text =="" || password.text =="")
  {
    try{
      String uri="";
      var res =await http.post(Uri.parse(uri), body: {});

    }catch(e)
    {
    print(e);

  }
  }
  else{
    print("please fill all field!");
  }
  */

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Signup Page"),
            backgroundColor: Colors.blue,
          ),
          body: Column(
            children: [
              Icon(Icons.lock,
              size: 100,),
              Container(
                margin: const EdgeInsets.all(10),
                child: TextFormField(
                 // controller: username,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),label: Text("Enter  name")
                  ),
        
                ),
            ),
             
             Container(
                margin:const  EdgeInsets.all(10),
                child: TextFormField(
                 // controller: email,
                  decoration:const  InputDecoration(
                    border: OutlineInputBorder(),label: Text("Enter Email")
                  ),
        
                ),
            ),
        
             Container(
                margin:const EdgeInsets.all(10),
                child: TextFormField(
                 // controller:password,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),label: Text("Enter Password")
                  ),
        
                ),
            ),
        
             Container(
                margin: const EdgeInsets.all(10),
                child: ElevatedButton(
                   onPressed: () {
                    //insertrecord();
                    },
                  style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.blue, // Set the background color to blue
                    ),  
                    child:const Text("Insert", style: TextStyle(color: Colors.white)),             
                ),
               
            ),
            ]  
          ),
          ),
      )
    );
  }
      
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

