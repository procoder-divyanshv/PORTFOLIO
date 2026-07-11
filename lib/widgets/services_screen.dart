import 'package:flutter/material.dart';
import 'package:personal_portfolio/models/dark_theme_data.dart';
import 'package:personal_portfolio/models/light_theme_data.dart';
import 'package:personal_portfolio/widgets/card_display_widget.dart';
import 'package:personal_portfolio/widgets/google_font_widget.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen(this.isDark, {super.key});
  final bool isDark;

  @override
  Widget build(context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 80),
              GoogleFontWidget(
                data: 'SERVICES',
                fontStyle: 'Google Sans Flex',
                fontSize: 100,
                fontWeight: FontWeight.w900,
                alignment: TextAlign.left,
                color: isDark?DarkThemeData().mainHeading:LightThemeData().mainHeading,
              ),
            ],
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CardDisplayWidget(
                headData: 'Flutter App Development',
                breif: 'Building fast, responsive, and visually appealing cross-platform applications for web and mobile with smooth UI/UX.',
                iconName: Icons.code,
              ),
              CardDisplayWidget(
                headData: 'Backend Development',
                breif: 'Designing robust, scalable server-side architectures and secure RESTful APIs using the MERN stack for high performance.',
                iconName: Icons.settings,
              ),
              CardDisplayWidget(
                headData: 'Data Engeneering',
                breif: 'Architecting reliable cloud infrastructure and scalable data ingestion pipelines within the AWS ecosystem.',
                iconName: Icons.store,
              ),
            ],
          ),

          SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ClipRRect(
              
              borderRadius: BorderRadius.circular(20),
              
              child: Image.asset('assets/sample.png',
              //color: const Color.fromARGB(255, 169, 168, 168),
              )
              ),

          ),
        ],
      ),
    );
  }
}
