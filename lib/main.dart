import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

    var _frases = [
      "A gratidão é uma grande aliada do sucesso!",
      "A gratidão é o único tesouro dos humildes.",
      "O quão feliz é uma pessoa depende da profundidade de sua gratidão.",
      "Não cobres tributos de gratidão."
    ];

    var _fraseGerada = "Clique abaixo para gerar uma frase!";

    void _gerarFrase(){

      var numeroSorteado = Random().nextInt( _frases.length );

      setState(() {
        _fraseGerada = _frases[numeroSorteado];
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
        titleTextStyle: TextStyle(
          color: Colors.white,
              fontSize: 18,
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),

          /*decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.amber)
          ),*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("image/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),
              ),
              ElevatedButton(
                onPressed:_gerarFrase,
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

