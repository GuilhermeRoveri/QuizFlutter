import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizflutter/home_page.dart';

class FimQuiz extends StatelessWidget {
  const FimQuiz({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Fim do Quiz',
          style:
              GoogleFonts.nunitoSans(fontSize: 50, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: const [
          Icon(Icons.search),
        ],
      
      ),
      
    );
  }
}
