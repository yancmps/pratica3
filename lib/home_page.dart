import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pratica3/app_controller.dart';

import 'login_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minhas Viagens'),
        actions: [
          CustomSwitch(),
        ],
      ),
      body: ListView.builder(
        itemCount: 5, //Define a quantidade de itens listado
        itemBuilder: (ctx, index) {
          return ListTile(
            title: Text("Viagem ${index + 1}"),
            subtitle: Text("Local: "),
            trailing: Icon(Icons.attach_file),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, '/cadastro');
        },
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDartTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
