import 'package:assignment_gosi/constant/colors.dart';
import 'package:assignment_gosi/utils/navigator_extension.dart';
import 'package:assignment_gosi/utils/screen_extension.dart.dart';
import 'package:assignment_gosi/views/navbar/nav_bar.dart';
import 'package:flutter/material.dart';

class LoadingView extends StatefulWidget {
  const LoadingView({super.key});

  @override
  State<LoadingView> createState() => _LoadingViewState();
}

class _LoadingViewState extends State<LoadingView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 10), () {
      return context.pushView(view: const NavBar());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: context.getWidth(divide: 10),
          width: context.getWidth(divide: 10),
          child: const CircularProgressIndicator(
            color: grey,
          ),
        ),
      ),
    );
  }
}
