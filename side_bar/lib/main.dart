import 'package:flutter/material.dart';
import 'package:side_bar/NavBar.dart';
import 'signup_page.dart';
import 'login_page.dart';



void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
   
        //colorScheme:  ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 209, 41, 11)),
        useMaterial3: true,
      ),
      home:   MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
   MyHomePage({Key? key}) : super(key: key);



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
  
    return  Scaffold(
        drawer: const Navbar(),
        appBar: AppBar(
          title: const Text("Navigation Bar App",style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.pink,

        ),
        body:  const FullScreenImage(),
         
          );
             
  }
}

class FullScreenImage extends StatelessWidget {
  const FullScreenImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image.network(
        "https://4kwallpapers.com/images/wallpapers/palm-tree-desert-sand-dunes-clear-sky-shadow-sunny-day-1280x1280-6432.png",
        fit: BoxFit.cover,
      ),
    );
  }
}
class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
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
              image: NetworkImage("https://media.istockphoto.com/id/1319672593/photo/mount-bisoke-volcano-virunga-mountais-between-congo-and-rwanda.webp?b=1&s=170667a&w=0&k=20&c=hcF4Xi7RzrZyDsdScFXRydzKYYQB9H-7KOSl24drcOc="),
              fit: BoxFit.cover,
              ),
           ),  
          ),
          ListTile(
            title: Text('Main Page'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );
            },
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
          leading: const Icon(Icons.calculate),
            title: const Text('Calculator'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => CalculatorPage()),
              );
            },
          ),

         ListTile(
          leading:const Icon(Icons.notifications),
          title: const Text("Notifications"),
          onTap: () =>print("Notifications tapped"),
         ),
         
         ListTile(
          leading:const Icon(Icons.settings),
          title:const  Text("Settings"),
          onTap: () =>print("Settings tapped"),
         ),
         const Divider(),
         ListTile(
              leading: const Icon(Icons.person_add),
              title: const Text('Signup'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SignupPage()),
                );
              },
            ),
        

          ListTile(
          leading: const Icon(Icons.login),
            title: const Text('Login'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
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

class  CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  late int _firstNumber;
  late int _secondNumber;
  String _result = '';

  final TextEditingController _firstController = TextEditingController();
  final TextEditingController _secondController = TextEditingController();

  void _calculateResult(String operation) {
    setState(() {
      _firstNumber = int.parse(_firstController.text);
      _secondNumber = int.parse(_secondController.text);

      switch (operation) {
        case '+':
          _result = (_firstNumber + _secondNumber).toString();
          break;
        case '-':
          _result = (_firstNumber - _secondNumber).toString();
          break;
        case '*':
          _result = (_firstNumber * _secondNumber).toString();
          break;
        case '/':
          _result = (_firstNumber / _secondNumber).toString();
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
        backgroundColor: Colors.pink,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _firstController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'First Number'),
            ),
            TextField(
              controller: _secondController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Second Number'),
            ),
           const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => _calculateResult('+'),
                  child:const Text('+'),
                ),
                ElevatedButton(
                  onPressed: () => _calculateResult('-'),
                  child:const Text('-'),
                ),
                ElevatedButton(
                  onPressed: () => _calculateResult('*'),
                  child: const Text('*'),
                ),
                ElevatedButton(
                  onPressed: () => _calculateResult('/'),
                  child:const Text('/'),
                ),
              ],
            ),
           const SizedBox(height: 20),
            Text(
              'Result: $_result',
              style:const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
