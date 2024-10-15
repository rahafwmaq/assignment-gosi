import 'package:flutter/material.dart';

extension NavigatorExtension on BuildContext {
  pushView({required Widget view}) {
    Navigator.push(this, MaterialPageRoute(builder: (context) => view));
  }

  popView() {
    Navigator.pop(this, "back");
  }
}
