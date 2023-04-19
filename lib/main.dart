import 'package:flutter/material.dart';
import 'dart:math';

// app de frases aleatórias com array de frases

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'APP frases aleatórias',
    home: Frases(),
  ));
}
class Frases extends StatefulWidget{
  const Frases({Key? key}) : super(key: key);
  @override
  State<Frases> createState() => _FrasesState();
}
class _FrasesState extends State<Frases> {

  //back do app
  //criar um array de frases

  var _frases = [
    "Se alguma coisa está difícil de ser feita, é porque não é pra ser feita!",
    "Crianças, vocês tentaram e falharam miseravelmente. A lição é: nunca tente.",
    "Eu tenho três filhos e nenhum dinheiro. Por que eu não posso ter nenhum filho e três dinheiros?",
    "Nunca diga qualquer coisa a não ser que tenha certeza de que todo mundo pensa o mesmo.",
    "Só porque eu não me importo não significa que eu não entenda.",
    "A culpa é minha e eu coloco ela em quem eu quiser!",
    "A TV me respeita. Ela ri comigo e não de mim.",
    "Qual o personagem dos Simpsons é programador mobile? Dart Simpson."
  ];

  var _frasesGerada = 'Clique abaixo para gerar uma frase!';
  void _gerarFrase(){ //funçao que gera a frase aleatoria
    var numeroSorteado = Random().nextInt(_frases.length);
    //random = ’dart:math’
    setState(() {
      _frasesGerada= _frases[numeroSorteado];
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
        appBar: AppBar(
        title: Text('Frases do dia',
        style: TextStyle(
          color: Colors.red
        ),
        ),
    backgroundColor: Colors.yellow[400],
    ),
    body: Center(
    child: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('image/sky.jpg'),
        fit: BoxFit.cover)
      ),
    padding: EdgeInsets.all(16),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
    Image.asset('image/homer.png'),
    Text(_frasesGerada,
    style: TextStyle(
    fontSize: 40,
    fontStyle: FontStyle.italic,
    color: Colors.red,
      fontWeight: FontWeight.bold,
        shadows: [
          Shadow( // bottomLeft
              offset: Offset(-1.0, -1.0),
              color: Colors.black87
          ),
          Shadow( // bottomRight
              offset: Offset(1.0, -1.0),
              color: Colors.black87
          ),
          Shadow( // topRight
              offset: Offset(1.0, 1.0),
              color: Colors.black87
          ),
          Shadow( // topLeft
              offset: Offset(-1.0, 1.0),
              color: Colors.black87
          ),
        ]
    ),
    ),
    ElevatedButton(
    onPressed: _gerarFrase,
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.yellow[400],
    ),
    child: Text('Nova Frase',
    style: TextStyle(
    fontSize: 25,
    color: Colors.red,
    fontWeight: FontWeight.bold,
    ),
    ),
    ),
    ],
    ),
    ),
    ),
    );
  }
}
