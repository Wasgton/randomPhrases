import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        appBar:AppBar(
            title: Text('Random Phrases'),
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
                        padding: EdgeInsets.only(bottom: 70),
                        decoration: BoxDecoration(

                        ),
                        child: Image.asset('lib/assets/imgs/logo.png'),
                      ),
                      Text(
                        'alkjdlsajkdlasjdlakjsdpasjdçlaksjdçlaljsdçlajsdlk jasdklj sdaskdlasd jlasdlaskjdaskd aj sdaj s dkjasldjas dlaslalkjdlsajkdlasjdlakjsdpasjdçlaksjdçlaljsdçlajsdlk jasdklj sdaskdlasd jlasdlaskjdaskd aj sdaj s dkjasldjas dlaslalkjdlsajkdlasjdlakjsdpasjdçlaksjdçlaljsdçlajsdlk jasdklj sdaskdlasd jlasdlaskjdaskd aj sdaj s dkjasldjas dlasl',
                        style: TextStyle(
                          fontSize: 24
                        ),
                      ),
                      TextButton(
                        onPressed: ()=>{},
                        child: Text(
                            'Nova Frase',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
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
