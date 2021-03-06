import 'package:flutter/material.dart';


class Cadastro extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Adicionar novo pedido"),
        actions: [
          TextButton(child: const Text('SALVAR',
            style: TextStyle(color: Colors.black87),
          ),
            onPressed: () => Navigator.pushNamed(context, '/lista'),
          ),
        ],
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget> [
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.black87,
                padding: EdgeInsets.only(left: 16),
              ),
              onPressed: () => Navigator.pushReplacementNamed(context, '/lista'),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: const Text('Meus Pedidos'),),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.black87,
                padding: EdgeInsets.only(left: 16),
              ),
              onPressed: () => Navigator.pushReplacementNamed(context, '/cadastro'),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: const Text('Adicionar um novo'),),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.black87,
                padding: EdgeInsets.only(left: 16),
              ),
              onPressed: () => Navigator.pushReplacementNamed(context, '/'),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: const Text('Sair'),),
            ),
          ],
        ),
      ),
      body: Column(
        children: const [
          Padding(
            padding: EdgeInsets.only( left: 16, right: 16, top: 4),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: UnderlineInputBorder(), //p fazer a caixinha ?? outlineinputborder
                label: Text('Caixinha'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only( left: 16, right: 16, top: 4),
            child: TextField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                border: UnderlineInputBorder(), //p fazer a caixinha ?? outlineinputborder
                label: Text('Escolhas'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only( left: 16, right: 16, top: 4),
            child: TextField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                border: UnderlineInputBorder(), //p fazer a caixinha ?? outlineinputborder
                label: Text('Frutas'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only( left: 16, right: 16, top: 4),
            child: TextField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                border: UnderlineInputBorder(), //p fazer a caixinha ?? outlineinputborder
                label: Text('Adicionais'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}