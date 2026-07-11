import 'package:flutter/material.dart';
import 'package:personal_portfolio/models/dark_theme_data.dart';
import 'package:personal_portfolio/models/light_theme_data.dart';
import 'package:personal_portfolio/widgets/google_font_widget.dart';
import 'package:personal_portfolio/widgets/hero_section.dart';
import 'package:personal_portfolio/widgets/text_button_widget.dart';

class Portfolio extends StatefulWidget{
  const Portfolio({super.key});

  @override
  State<Portfolio> createState(){
    return _PortfolioState();
  }
}

class _PortfolioState extends State<Portfolio> {
  // var appBarTextColor=Colors.black;
  // var gcolor1=Colors.white;
  // var gcolor2=const Color.fromARGB(255, 204, 87, 246);
  List<Color> colorsList =[] ;
  bool isDarkMode=false;
  // const Portfolio({super.key});
  void _switchToDarkTheme(){
    setState(
      (){
        // colorsList=DarkThemeData().backGroundGradientList;
        isDarkMode = true;
      }
    );
    
  }
  @override
  Widget build(context) {
   colorsList = (isDarkMode?DarkThemeData().backGroundGradientList:LightThemeData().backgroundColor);
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: colorsList,
        // gradient: LinearGradient(
        //   colors: [Color.fromARGB(255, 17, 67, 215), Color.fromARGB(255, 121, 20, 235)],
          begin: Alignment.topLeft,
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
              color: isDarkMode?DarkThemeData().appBarLogoColor :LightThemeData().appBarLogoColor,
            ),
          ),  

          // backgroundColor: const Color.fromARGB(255, 176, 174, 174),
          actions: [
            TextButtonWidget(isDarkMode,() {}, 'Home'),
            TextButtonWidget(isDarkMode,() {}, 'Projects'),
            TextButtonWidget(isDarkMode,() {}, 'Services'),
            TextButtonWidget(isDarkMode,() {}, 'GitHub'),
            TextButtonWidget(isDarkMode,() {}, 'MyCV'),

            SizedBox(width: 30),
            IconButton(
              onPressed: _switchToDarkTheme,
              icon: Icon(isDarkMode?(Icons.sunny):(Icons.mode_night)),
              color: isDarkMode? DarkThemeData().appBarIconColor: LightThemeData().appBarIconColor,
            ),
          ],
        ),
        body: HeroSection(isDarkMode),
      ),
    );
  }
}
