import 'package:assignment_gosi/utils/screen_extension.dart.dart';
import 'package:flutter/material.dart';

class BgImage extends StatelessWidget {
  const BgImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/BG.png',
      width: context.getWidth(),
      height: context.getHeight(),
      fit: BoxFit.cover,
    );
  }
}
