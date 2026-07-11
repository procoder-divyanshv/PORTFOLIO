import 'package:flutter/material.dart';
import 'package:personal_portfolio/widgets/google_font_widget.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(10),
      child: Container(
        child: SizedBox(height: 80, child: Column(children: [
          GoogleFontWidget(data: 'PROJECTS', fontStyle: 'Google Sans Flex', fontSize: 100, fontWeight: FontWeight.bold, alignment: TextAlign.left)

        ],
      )),
      ),
    );
  }
}
