import 'package:flutter/material.dart';
import 'package:personal_portfolio/models/dark_theme_data.dart';
import 'package:personal_portfolio/models/light_theme_data.dart';
import 'package:personal_portfolio/widgets/google_font_widget.dart';

class CardDisplayWidget extends StatelessWidget {
  const CardDisplayWidget(this.isDark,{
    super.key,
    
    required this.headData,
    required this.breif,
    required this.iconName,
  });
  final IconData iconName;
  final String headData;
  final String breif;
  final bool isDark;
  @override
  Widget build(context) {
    return Expanded(
      child: Card(
        color: isDark?const Color.fromARGB(255, 26, 16, 40):const Color.fromARGB(223, 255, 255, 255),
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(iconName,
                color: isDark?DarkThemeData().appBarIconColor:LightThemeData().appBarIconColor,
                ), //icon,
                SizedBox(height: 30,),
                GoogleFontWidget(
                  data: headData,
                  fontStyle: 'Rubik',
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  alignment: TextAlign.left,
                  color:isDark?DarkThemeData().textOnScreen:LightThemeData().textOnScreen,
                ), //heading,
                SizedBox(height: 30,),
                GoogleFontWidget(
                  data: breif,
                  fontStyle: 'BioRhyme',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  alignment: TextAlign.left,
                  color:isDark?DarkThemeData().textOnScreen:LightThemeData().textOnScreen,

                ),
                //breif
              ],
            ),
          ),
        ),
      ),
    );
  }
}
