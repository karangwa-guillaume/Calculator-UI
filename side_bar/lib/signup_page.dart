import 'package:flutter/material.dart';
import 'package:side_bar/login_page.dart';

class SignupPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Signup Page", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.pink,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(), label: Text("Enter name"),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(), label: Text("Enter Email"),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(), label: Text("Enter Password"),
                ),
                obscureText: true,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  _signup(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                child: const Text("SignUp", style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5, color: Colors.grey[400],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text("or continue", style: TextStyle(color: Colors.grey[700])),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5, color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account!", style: TextStyle(color: Colors.redAccent)),
                SizedBox(width: 4),
                Text("Login here", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _signup(BuildContext context) {
    final username = _usernameController.text;
    final email = _emailController.text;
    final password = _passwordController.text;

    if (username.isEmpty || email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please fill all fields')),
      );
      return;
    }

    // Simulating successful signup:
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Signup successful!')),
    );

    // Navigate back to the home page or any other page after successful signup.
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: const Text('Welcome to the Home Page!'),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SignupPage(),
  ));
}