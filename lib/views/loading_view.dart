import 'package:assignment_gosi/constant/colors.dart';
import 'package:assignment_gosi/utils/navigator_extension.dart';
import 'package:assignment_gosi/utils/screen_extension.dart.dart';
import 'package:assignment_gosi/views/navbar/nav_bar.dart';
import 'package:assignment_gosi/views/overview_result/bloc/overview_bloc.dart';
import 'package:assignment_gosi/widgetss/show_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoadingView extends StatefulWidget {
  const LoadingView({super.key});

  @override
  State<LoadingView> createState() => _LoadingViewState();
}

class _LoadingViewState extends State<LoadingView> {
  @override
  void initState() {
    final overviewBloc = context.read<OverviewBloc>();
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      showDialogWidget(context: context, overviewBloc: overviewBloc);
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
