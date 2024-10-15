
import 'package:assignment_gosi/constant/colors.dart';
import 'package:assignment_gosi/utils/screen_extension.dart.dart';
import 'package:assignment_gosi/widget/text_widget.dart';
import 'package:flutter/material.dart';

class ContainerWhiteWidget extends StatelessWidget {
  const ContainerWhiteWidget({
    super.key,
    required this.title,
    required this.value,
    this.isCapitalLetter,
  });

  final String title;
  final String value;
  final bool? isCapitalLetter;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.getWidth(divide: 4.15),
      width: context.getWidth(divide: 2.75),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextWidget(
            text: value,
            fontSize: context.getWidth(divide: 14.51),
            fontWeight: FontWeight.w500,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: TextWidget(
              text: title,
              fontSize: context.getWidth(divide: 35),
              fontWeight: FontWeight.w500,
              capitalizeAllLetter: isCapitalLetter ?? false,
            ),
          )
        ],
      ),
    );
  }
}

