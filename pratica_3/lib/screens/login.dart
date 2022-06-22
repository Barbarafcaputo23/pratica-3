import 'package:flutter/material.dart';

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
                image: NetworkImage('https://cdn.wizard.com.br/wp-content/uploads/2017/01/05115936/aprenda-os-nomes-das-frutas-em-ingles.jpg'),
                height: 200,
                width: 200,
            ),
            Text('Mercearia Online', style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            ),
            Padding(
                padding: EdgeInsets.only( left: 16, right: 16, top: 4),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(), //p fazer a caixinha é outlineinputborder
                  label: Text('Email'),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only( left: 16, right: 16, top: 4),
                child: TextField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(), //p fazer a caixinha é outlineinputborder
                  label: Text('Password'),
                ),
              ),
            ),
            SizedBox(
                height: 24,
            ),
            TextButton(
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.blue,
              fixedSize: Size(320, 24),
            ),
            onPressed: () => Navigator.pushReplacementNamed(context, '/lista'),
            child: const Text('LOGIN'),
            ),
          ],
        )
    );
  }
}