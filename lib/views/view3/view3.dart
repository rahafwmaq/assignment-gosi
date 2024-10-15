import 'package:assignment_gosi/constant/colors.dart';
import 'package:assignment_gosi/widget/text_widget.dart';
import 'package:flutter/material.dart';

class View3 extends StatelessWidget {
  const View3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: white,
      body: Center(
        child: TextWidget(text: 'View 3'),
      ),
    );
  }
}
