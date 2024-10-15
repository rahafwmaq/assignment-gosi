import 'dart:ui';

import 'package:flutter/material.dart';

class ObliqueClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, 100); // Start from top-left with offset
    path.lineTo(size.width, 0.0); // Draw diagonal to top-right
    path.lineTo(size.width, size.height); // Draw straight line to bottom-right
    path.lineTo(0.0, size.height); // Draw straight line to bottom-left
    path.close(); // Close the path
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; // Reclip only if needed
  }
}
