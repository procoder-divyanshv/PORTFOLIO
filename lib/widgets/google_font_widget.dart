import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleFontWidget extends StatelessWidget{
  const GoogleFontWidget({super.key,
    this.color= Colors.black,  //this is the optional argument
    required this.data,
    required this.fontStyle,
    required this.fontSize,
    required this.fontWeight,
    required this.alignment});
  final String data;
  final String fontStyle;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign alignment;
  final Color color;
  @override
  Widget build(context){
    return  Text(data,
    textAlign: alignment,
    style: GoogleFonts.getFont(fontStyle,
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    ),

    );
  }
}
