import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizTerrestre extends StatefulWidget {
  const QuizTerrestre({super.key});

  @override
  State<QuizTerrestre> createState() => _QuizState();
}

class _QuizState extends State<QuizTerrestre> {
  int currentQuestionIndex = 0;
  String? selectedAnswer;
  bool? isCorrect; //Índice da pergunta atual
  final List<Map<String, dynamic>> questions = [
    {
      'question':
          'Qual destes animais terrestres é conhecido por sua tromba longa e flexível?',
      'answers': ['Leão', 'Elefante', 'Girafa', 'Zebra'],
      'correctAnswer': 'Elefante'
    },
    {
      'question':
          'Qual destes animais terrestres é o mamífero mais rápido do mundo?',
      'answers': ['Leopardo', 'Guepardo', 'Leão', 'Gorila'],
      'correctAnswer': 'Guepardo'
    },
    {
      'question':
        'Qual destes animais terrestres é um marsupial e é encontrado principalmente na Austrália?',
      'answers': ['Leão', 'Canguru', 'Lobo', 'Tigre'],
      'correctAnswer': 'Canguru'
    }
    //More questions
  ];

  void nextQuestion() {
    selectedAnswer = null;
    isCorrect = null;
    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    } else {
      //Fim
    }
  }

  void handleAnswer(String answer) {
    setState(() {
      selectedAnswer = answer;
      isCorrect = answer == questions[currentQuestionIndex]['correctAnswer'];
    });

    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        // Resetar para o próximo estado da pergunta

        if (currentQuestionIndex < questions.length - 1) {
          currentQuestionIndex++;
        } else {
          //Fim do quiz, fazer algo aqui
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[currentQuestionIndex];
    return Scaffold(
      appBar: AppBar(
          title: Text('Quiz terrestre!',
              style: GoogleFonts.roboto(fontWeight: FontWeight.bold))),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(18),
            color: Colors.deepPurple[50],
            width: double.infinity,
            height: 400,
            child: Center(
              child: Text(currentQuestion['question'],
                  style:
                      GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ),
          Wrap(
            children: currentQuestion['answers'].map<Widget>((resposta) {
              bool isSelected = selectedAnswer == resposta;
              Color? buttonColor;
              if (isSelected) {
                buttonColor = isCorrect! ? Colors.green : Colors.red;
              }
              return meuBtn(resposta, () => handleAnswer(resposta), buttonColor);
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget meuBtn(String resposta, VoidCallback onPressed, Color? color) =>
      Container(
        margin: const EdgeInsets.all(16),
        width: 160,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
          ),
          child: Text(resposta),
        ),
      );
}