import 'package:flutter/material.dart';

class Lista extends StatefulWidget {
  const Lista({Key? key}) : super(key: key);

  @override
  State<Lista> createState() => _ListaState();
}

class _ListaState extends State<Lista> {

  ListView criarListView(){
    return ListView(

      children: <Widget> [
        ListTile(
          title: Text("Banana"),
          subtitle: Text("O melhor para os seus ossos e segurar intestino."),
          trailing: Image(
              image: NetworkImage('hhttps://hospitalsantatereza.com.br/wp-content/uploads/2020/01/banana-320x320.png')
          ),
          isThreeLine: true,
          onLongPress: () {},
        ),
        ListTile(
          title: Text("Manga"),
          subtitle: Text("O melhor para sua imunidade."),
          trailing: Image(
              image: NetworkImage('https://cozinhatecnica.com/wp-content/uploads/2014/12/manga-kent.jpg')
          ),
          isThreeLine: true,
          onLongPress: () {},
        ),
        ListTile(
          title: Text("Uva"),
          subtitle: Text("O melhor Anti-Oxidante."),
          trailing: Image(
              image: NetworkImage('https://imagens.ebc.com.br/Putm4YwJQztDY3ZZs8H7IJwUKQI=/754x0/smart/https://radios.ebc.com.br/sites/default/files/thumbnails/image/uva_melodia_-_portal_embrapa.jpg')
          ),
          isThreeLine: true,
          onLongPress: () {},
        ),
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My recipes"),
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
                child: const Text('My recipes'),),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.black87,
                padding: EdgeInsets.only(left: 16),
              ),
              onPressed: () => Navigator.pushReplacementNamed(context, '/cadastro'),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: const Text('Add new'),),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.black87,
                padding: EdgeInsets.only(left: 16),
              ),
              onPressed: () => Navigator.pushReplacementNamed(context, '/'),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: const Text('Logout'),),
            ),
          ],
        ),
      ),

      body:
      criarListView() , floatingActionButton: FloatingActionButton(
      onPressed: () => Navigator.pushReplacementNamed(context, '/cadastro'),
      backgroundColor: Colors.blue,
      child: Icon(Icons.add),
    ),
    );
  }
}



