import 'package:flutter/material.dart';
import 'dart:math';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var _frases = [
    "frase1",
    "frase2",
    "frase3",
    "frase4",
    "frase5",
    "frase6",
    "frase7",
    "frase8",
    "frase9",
    "frase10",
    "frase11",
    "frase12",
    "frase13",
    "frase14",
    "frase15",
    "frase16",
    "frase17",
    "frase18",
  ];

  var _fraseGerada = "Clique abaixo parar gerar uma nova frase";

  void gerarFrase(){
    var rng = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[rng];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        appBar:AppBar(
            title: Text('Frases do dia'),
          ),
        body: Container(
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Image.asset('lib/assets/imgs/logo.png'),
                      ),
                      Text(
                        _fraseGerada,
                        style: TextStyle(
                          fontSize: 17
                        ),
                      ),
                      ElevatedButton(
                        onPressed: ()=>{
                          gerarFrase()
                        },
                        child: Text(
                            'Nova Frase',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
