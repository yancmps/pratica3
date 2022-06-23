import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyBYe7bs-Lyb3E4JNrbigKOeRKppcKtC17eQ&usqp=CAU'),
            height: 200,
            width: 200,
          ),
          Text(
            '@Viagens.com',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Container(height: 10),
          TextField(
            onChanged: (text) {
              email = text;
            },
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                labelText: 'Email', border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            onChanged: (text) {
              password = text;
            },
            obscureText: true,
            decoration: InputDecoration(
                labelText: 'Password', border: OutlineInputBorder()),
          ),
          Padding(
            padding: EdgeInsets.only(top: 24),
            child: ElevatedButton(
              child: Text('ENTRAR'),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
            ),
          ),
        ],
      ),
    );
  }
}
