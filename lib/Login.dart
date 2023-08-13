import 'package:flutter/material.dart';
import 'package:movielist/HomePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  Widget myText(String label, bool isObsecure){
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: TextField(
        obscureText: isObsecure,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: label,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              Image.asset(
                  'assets/cia.PNG',
                height: 200,
              ),
              myText("Username", false),
              myText("Password", true),
              //button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: Text('Login'),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(onPressed: () {}, child: Text('Register'))// Corrected the typo "Sizedbox" to "SizedBox"
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
