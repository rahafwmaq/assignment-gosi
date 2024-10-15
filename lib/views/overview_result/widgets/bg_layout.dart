import 'package:assignment_gosi/utils/screen_extension.dart.dart';
import 'package:flutter/material.dart';

class BgLayout extends StatelessWidget {
  const BgLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.getHeight(),
      width: context.getWidth(),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color.fromARGB(206, 0, 0, 0), Color.fromARGB(0, 51, 51, 51)],
        ),
      ),
    );
  }
}
