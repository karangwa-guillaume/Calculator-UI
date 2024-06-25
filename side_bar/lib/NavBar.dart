import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:side_bar/calculator_page.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("karangwa guillaume",style: TextStyle(fontSize: 24),),
             accountEmail: const Text("guigy34@gmail.com",style: TextStyle(fontSize: 18),),
             currentAccountPicture:CircleAvatar(
              child: ClipOval(
                child: Image.network("https://scontent.fnbo1-1.fna.fbcdn.net/v/t1.18169-9/1505511_710344232374692_1936004172557393883_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=5f2048&_nc_ohc=__lE5iUFoRYQ7kNvgH0cPMo&_nc_ht=scontent.fnbo1-1.fna&oh=00_AYCWyxTli-7kbO4OLKbYcWpXCr1F7EkmarZTTtEzeWqW1Q&oe=669BDD38",
                 width: 150,
                 height: 150,
                 fit: BoxFit.cover,
                 ),
                 
              ),
           ) ,
           decoration: const BoxDecoration(
            color: Colors.blue,
            image: DecorationImage(
              image: NetworkImage("https://www.kcc.rw/uploads/9/8/2/4/98249186/kigali-convention-centre-entrance.jpg"),
              fit: BoxFit.cover,
              ),
           ),  
          ),
         ListTile(
          leading:const Icon(Icons.favorite),
          title: const Text("Favorites"),
          onTap: () =>print("Favorites tapped"),
         ),
         const Divider(),
          ListTile(
           leading:const Icon(Icons.file_upload),
          title:const Text("Upload shot"),
          onTap: () =>print("Upload tapped"),
         ),

         ListTile(
         leading:const Icon(Icons.account_circle),
          title:const  Text("Prifile"),
          onTap: () =>print("Profile tapped"),
         ),

         ListTile(
           leading:const Icon(Icons.message),
          title: const Text("massages"),
          onTap: () =>print("massages tapped"),
         ),

         ListTile(
          leading:const Icon(Icons.line_axis),
          title:const Text("Stats"),
          onTap: () =>print("Stats tapped"),
         ),

         ListTile(
          leading:const Icon(Icons.share),
          title:const Text("Share"),
          onTap: () =>print("Share tapped"),
         ),

         ListTile(
          leading:const Icon(Icons.notifications),
          title: const Text("Notifications"),
          onTap: () =>print("Notifications tapped"),
         ),
         const Divider(),
         ListTile(
          leading:const Icon(Icons.settings),
          title:const  Text("Settings"),
          onTap: () =>print("Settings tapped"),
         ),
         ListTile(
          leading:const Icon(Icons.calculate),
          title:const  Text("Calculator"),
          onTap: () =>print("Calculator tapped"),
         ),

         ListTile(
          leading:const Icon(Icons.logout),
          title:const Text("Sign out"),
          onTap: () =>print("Logout tapped"),
         ),
          
        
        ],
      ),
    );
  }
}