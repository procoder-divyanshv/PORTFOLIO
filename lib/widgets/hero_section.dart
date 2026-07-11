import 'package:flutter/material.dart';
import 'package:personal_portfolio/models/dark_theme_data.dart';
import 'package:personal_portfolio/models/light_theme_data.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/widgets/google_font_widget.dart';

class HeroSection extends StatelessWidget {
  const HeroSection(this.isDark,{super.key});
  final bool isDark;
  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FittedBox(
              fit: BoxFit.contain,
              child: GoogleFontWidget(
                data: 'FLUTTER APPLICATION DEVELOPER\nDIVYANSH VERMA',
                alignment: TextAlign.left,
                fontSize: 100.0,
                fontStyle: 'Google Sans Flex',
                fontWeight: FontWeight.w900,
                color: isDark?DarkThemeData().mainHeading:LightThemeData().mainHeading,
              ),
              // child: Text('FLUTTER APPLICATION DEVELOPER\nDIVYANSH VERMA',
              // textAlign: TextAlign.left,
              // style: TextStyle(fontSize: 80,fontWeight: FontWeight.bold,),),
            ),
        
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    // color: Colors.green,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GoogleFontWidget(
                          data: '< Flutter Dart Python C++ >',
                          fontStyle: 'JetBrains Mono',
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          alignment: TextAlign.left,
                          color: isDark?DarkThemeData().textOnScreen:LightThemeData().textOnScreen,
                        ),
                        const SizedBox(height: 10),
                        GoogleFontWidget(
                          data:
                              'Hi, I\'m Divyansh Verma, a Full-Stack Developer and AIML enthusiast graduating in 2028. I specialize in building scalable web applications using the MERN stack and have a strong focus on high-performance computing and cloud infrastructure.',
                          fontStyle: 'Space Grotesk',
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          alignment: TextAlign.left,
                          color: isDark?DarkThemeData().textOnScreen:LightThemeData().textOnScreen,
                        ),
                        const SizedBox(height: 30),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            foregroundColor: isDark?DarkThemeData().buttonTextColor:LightThemeData().buttonTextColor,
                            backgroundColor: isDark?DarkThemeData().buttonColor: LightThemeData().buttonColor,
                            // backgroundColor: Color(0xFF06B6D4),
                            // foregroundColor: Color(0xFF0F172A),
                            minimumSize: Size(40, 20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: GoogleFontWidget(data: 'Download CV', fontStyle: 'Poppins', fontSize: 20, fontWeight: FontWeight.bold, alignment: TextAlign.center))
                            
                            ),
                          
                          
                      ],
                    ),
                  ),
                ),

                // const Spacer(),
                SizedBox(width: 200),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  height: 250,
                  width: 600,
                  child: SizedBox(
                    height: 200,
                    width: 400,
                    child: Text('GitHub contributions.'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
