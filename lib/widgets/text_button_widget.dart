import 'package:flutter/material.dart';
import 'package:personal_portfolio/models/dark_theme_data.dart';
import 'package:personal_portfolio/widgets/google_font_widget.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget(
    this.isDark,
    this.onPressedButton,
    this.buttonName, {
    super.key,
  });
  final String buttonName;
  final bool isDark;
  final void Function() onPressedButton;
  @override
  Widget build(context) {
    return TextButton(
      onPressed: onPressedButton,
      child: GoogleFontWidget(
        data: buttonName,
        fontStyle: 'Work Sans',
        fontSize: 20,
        fontWeight: FontWeight.w500,
        alignment: TextAlign.center,
        color: isDark?DarkThemeData().appBarTextColor:Colors.black,
      ),
    );
  }
}
