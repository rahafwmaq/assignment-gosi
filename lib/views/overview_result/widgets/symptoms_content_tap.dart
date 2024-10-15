import 'package:assignment_gosi/constant/colors.dart';
import 'package:assignment_gosi/utils/screen_extension.dart.dart';
import 'package:assignment_gosi/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class SymptomsContentTap extends StatelessWidget {
  const SymptomsContentTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextWidget(
        text: 'Symptoms Content',
        colorText: white,
        fontSize: context.getWidth(divide: 20),
      ),
    );
  }
}
