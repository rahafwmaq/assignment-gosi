import 'package:assignment_gosi/utils/capitalize_text.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {super.key,
      required this.text,
      this.fontFamily,
      this.fontSize,
      this.fontWeight,
      this.colorText,
      this.decorationText,
      this.textAlign,
      this.shadowColor,
      this.blurRadius,
      this.offset,
      this.decorationColor,
      this.decorationStyle,
      this.decorationThickness,
      this.overflow,
      this.capitalizeAllLetter,
      this.capitalizeFirstLetterInWord,
      this.capitalizeFirstLetterInSentence});

  final String text;
  final String? fontFamily;
  final TextAlign? textAlign;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? colorText;
  final TextDecoration? decorationText;
  final Color? decorationColor;
  final TextDecorationStyle? decorationStyle;
  final double? decorationThickness;
  final Color? shadowColor;
  final double? blurRadius;
  final Offset? offset;
  final bool? capitalizeAllLetter;
  final bool? capitalizeFirstLetterInWord;
  final bool? capitalizeFirstLetterInSentence;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: overflow,
      capitalizeAllLetter == true
          ? text.capitalizeAllLetters()
          : capitalizeFirstLetterInWord == true
              ? text.capitalizeFirstLetterInWord()
              : capitalizeFirstLetterInSentence == true
                  ? text.capitalizeFirstLetterInSentence()
                  : text,
      style: TextStyle(
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
        shadows: [
          Shadow(
              color: shadowColor ?? const Color.fromARGB(0, 255, 255, 255),
              blurRadius: blurRadius ?? 0,
              offset: offset ?? Offset.zero)
        ],
        decoration: decorationText,
        fontFamily: fontFamily,
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: colorText,
      ),
      textAlign: textAlign,
    );
  }
}
