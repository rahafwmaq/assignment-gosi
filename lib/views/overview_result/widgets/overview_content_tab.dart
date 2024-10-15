import 'package:assignment_gosi/constant/colors.dart';
import 'package:assignment_gosi/utils/screen_extension.dart.dart';
import 'package:assignment_gosi/views/overview_result/bloc/overview_bloc.dart';
import 'package:assignment_gosi/views/overview_result/widgets/containerData.dart';
import 'package:assignment_gosi/widget/text_widget.dart';
import 'package:assignment_gosi/widgetss/liner_indicator_widget.dart';
import 'package:flutter/material.dart';

class OverviewContentTab extends StatelessWidget {
  const OverviewContentTab({
    super.key,
    required this.overviewBloc,
  });
  final OverviewBloc overviewBloc;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextWidget(
          text: overviewBloc.locatorOverview.fitnessModel.title ?? '',
          colorText: white,
          capitalizeFirstLetterInWord: true,
          fontSize: context.getWidth(divide: 14.54),
          fontWeight: FontWeight.w400,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: TextWidget(
            text: overviewBloc.locatorOverview.fitnessModel.desc ?? '',
            colorText: white,
            textAlign: TextAlign.center,
            capitalizeFirstLetterInWord: true,
            fontSize: 17,
            fontWeight: FontWeight.w400,
          ),
        ),
        ContainerData(overviewBloc: overviewBloc),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextWidget(
                text: 'Edit check-ins',
                colorText: white,
                capitalizeAllLetter: true,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: white,
                  size: context.getWidth(divide: 30),
                ),
              )
            ],
          ),
        ),
        const LinerIndicatorWidget(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(text: 'Current phase: '),
                    TextSpan(
                        text: 'Mid Follicular',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: white,
                  size: context.getWidth(divide: 30),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
