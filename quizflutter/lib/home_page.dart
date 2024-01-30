import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizflutter/quizMarinho.dart';
import 'package:quizflutter/quizTerrestre.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'QuizRoverí',
          style:
              GoogleFonts.nunitoSans(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        actions: const [
          Icon(Icons.search),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        //CrossAxisAlignment posiciona a coluna em uma parte da tela
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Desafie \nsua mente',
              style: GoogleFonts.nunitoSans(
                  fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 50,
            //Usar child para criar um widget único, children para multiplos
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text('Todos', style: GoogleFonts.roboto()),
                  ),
                  Container(
                    width: 150,
                    margin: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      children: [
                          Image.asset('images/patinha.png', width: 50, height: 50),
                        Text('Animais', style: GoogleFonts.roboto(color: Colors.white),)
                      ],
                      ),
                  ),
                  Container(
                    width: 150,
                    margin: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(children: [
                      Image.asset('images/astrologia.png', width: 50, height: 50),
                      Text('Astrologia', style: GoogleFonts.roboto(color: Colors.black),)
                    ]),
                  ),
                   Container(
                    width: 150,
                    margin: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(children: [
                      Image.asset('images/tecnologia.png', width: 50, height: 50),
                      Text('Tecnologia', style: GoogleFonts.roboto(color: Colors.black),)
                    ]),
                  ),
                ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(16),
            height: 300,
            width: double.infinity,
            child: GestureDetector(
              onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const Quiz())),
              child: Card(
                color: Colors.blue[50],
                elevation: 4,
                child: Column(children: [
                  Image.asset('images/baleiazinha.png', width: 150, height: 150),
                   Text('Mostre seu conhecimento \nmarítimo!',
                  style: GoogleFonts.indieFlower(fontSize: 16, fontWeight: FontWeight.bold)),
                  ListTile(
                    leading: const Icon(Icons.star, color: Colors.amberAccent),
                    title: Text('1500 pontos', style: GoogleFonts.roboto(fontWeight: FontWeight.w300),),
                  ),
                ],),
              ),
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView(scrollDirection: Axis.horizontal,
            children: [
              Container(margin: const EdgeInsets.all(8),
              height: 100,
              width: 200,
              child: GestureDetector(
                onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const QuizTerrestre())),
                child: Card(
                  color: Colors.green[8],
                  elevation: 4,
                  child: Column(children: [Padding(padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/sapinho.png', width: 50, height: 50),
                  ),
                  Text('Mostre seu conhecimento \nterrestre!',
                  style: GoogleFonts.indieFlower(fontSize: 16, fontWeight: FontWeight.bold)),
                  ListTile(
                    leading: const Icon(Icons.star, color: Colors.amberAccent),
                    title: Text('1500 pontos', style: GoogleFonts.roboto(fontWeight: FontWeight.w300),),
                  )
                  ]
                  ),
                ),
              ),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                height: 100,
                width: 200,
                child: Card(
                  color:  Colors.blueGrey[100],
                  elevation: 4,
                  child: Column(children: [Padding(padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/tucano.png', width: 50, height: 50),
                  ),
                  Text('Mostre seu conhecimento \naéreo!',
                  style: GoogleFonts.indieFlower(fontSize: 16, fontWeight: FontWeight.bold)),
                  ListTile(
                    leading: const Icon(Icons.star, color: Colors.amberAccent),
                    title: Text('1200 pontos', style: GoogleFonts.roboto(fontWeight: FontWeight.w300)),
                  )
                  ],
                  ),
                  ),
              )
            ],
            ),
          )
        ],
      ),
    );
  }
}
