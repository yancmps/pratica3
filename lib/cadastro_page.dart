import 'package:flutter/material.dart';

import 'cadastro_page.dart';

class CadastroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adicione o proximo destino: "),
      ),
      body: Column(children: [
        TextField(
          textCapitalization: TextCapitalization.words,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(labelText: "Destino"),
        ),
        TextField(
          keyboardType: TextInputType.datetime,
          decoration: InputDecoration(labelText: "Data"),
        ),
        ElevatedButton(
          child: Text('Criar'),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            textStyle: TextStyle(fontSize: 14),
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/home');
          },
        ),
      ]),
    );
  }
}
