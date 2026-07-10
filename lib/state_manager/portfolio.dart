import 'package:flutter/material.dart';
import 'package:personal_portfolio/widgets/google_font_widget.dart';
import 'package:personal_portfolio/widgets/hero_section.dart';
import 'package:personal_portfolio/widgets/text_button_widget.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.white,const Color.fromARGB(255, 175, 255, 83)],
        // gradient: LinearGradient(
        //   colors: [Color.fromARGB(255, 17, 67, 215), Color.fromARGB(255, 121, 20, 235)],
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
        ),
      ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          // backgroundColor: Colors.white,
          backgroundColor: Colors.transparent,
          toolbarHeight: 80,
          title: Padding(
            padding: const EdgeInsets.all(20),
            child: GoogleFontWidget(
              data: '</DIVYANSH_VERMA>',
              fontStyle: 'JetBrains Mono',
              fontSize: 30,
              fontWeight: FontWeight.bold,
              alignment: TextAlign.center,
              // color: Color(0xFFF8FAFC),
            ),
          ),

          // backgroundColor: const Color.fromARGB(255, 176, 174, 174),
          actions: [
            TextButtonWidget(() {}, 'Home'),
            TextButtonWidget(() {}, 'Projects'),
            TextButtonWidget(() {}, 'Services'),
            TextButtonWidget(() {}, 'GitHub'),
            TextButtonWidget(() {}, 'MyCV'),
            SizedBox(width: 30),
          ],
        ),
        body: HeroSection(),
      ),
    );
  }
}
