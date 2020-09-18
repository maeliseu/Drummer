import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        scaffoldBackgroundColor: Colors.black,
        // fontFamily: "Grandstander",
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'SonnyDrumer',
          style: TextStyle(fontFamily: 'Grandstander'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Row(
                children: [
                  BotaoXilofone(
                    numero: 1,
                    cor: Colors.green,
                  ),
                  BotaoXilofone(
                    numero: 2,
                    cor: Colors.green,
                  ),
                  BotaoXilofone(
                    numero: 3,
                    cor: Colors.green,
                  ),
                  BotaoXilofone(
                    numero: 4,
                    cor: Colors.green,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  BotaoXilofone(
                    numero: 5,
                    cor: Colors.pink,
                  ),
                  BotaoXilofone(
                    numero: 6,
                    cor: Colors.pink,
                  ),
                  BotaoXilofone(
                    numero: 7,
                    cor: Colors.pink,
                  ),
                  BotaoXilofone(
                    numero: 8,
                    cor: Colors.pink,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  BotaoXilofone(
                    numero: 9,
                    cor: Colors.yellow,
                  ),
                  BotaoXilofone(
                    numero: 10,
                    cor: Colors.yellow,
                  ),
                  BotaoXilofone(
                    numero: 11,
                    cor: Colors.yellow,
                  ),
                  BotaoXilofone(
                    numero: 12,
                    cor: Colors.yellow,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  BotaoXilofone(
                    numero: 13,
                    cor: Colors.blue,
                  ),
                  BotaoXilofone(
                    numero: 14,
                    cor: Colors.blue,
                  ),
                  BotaoXilofone(
                    numero: 15,
                    cor: Colors.blue,
                  ),
                  BotaoXilofone(
                    numero: 16,
                    cor: Colors.blue,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BotaoXilofone extends StatelessWidget {
  final int numero;
  final Color cor;

  const BotaoXilofone({this.numero, this.cor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          var player = AudioCache();
          player.play('beat$numero.wav');
        },
        child: Container(
          // height: 200,
          // width: 200,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: cor,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
