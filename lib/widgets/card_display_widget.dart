import 'package:flutter/material.dart';
import 'package:personal_portfolio/widgets/google_font_widget.dart';

class CardDisplayWidget extends StatelessWidget {
  const CardDisplayWidget({
    super.key,
    required this.headData,
    required this.breif,
    required this.iconName,
  });
  final IconData iconName;
  final String headData;
  final String breif;
  @override
  Widget build(context) {
    return Expanded(
      child: Card(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(iconName), //icon,
                SizedBox(height: 30,),
                GoogleFontWidget(
                  data: headData,
                  fontStyle: 'Rubik',
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  alignment: TextAlign.left,
                ), //heading,
                SizedBox(height: 30,),
                GoogleFontWidget(
                  data: breif,
                  fontStyle: 'BioRhyme',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  alignment: TextAlign.left,
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
