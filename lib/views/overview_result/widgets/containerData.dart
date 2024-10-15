import 'package:assignment_gosi/constant/colors.dart';
import 'package:assignment_gosi/utils/screen_extension.dart.dart';
import 'package:assignment_gosi/views/overview_result/bloc/overview_bloc.dart';
import 'package:assignment_gosi/widgets/text_widget.dart';
import 'package:assignment_gosi/widgets/container_white_widget.dart';
import 'package:assignment_gosi/widgets/show_dialog.dart';
import 'package:flutter/material.dart';

class ContainerData extends StatelessWidget {
  const ContainerData({
    super.key,
    required this.overviewBloc,
  });

  final OverviewBloc overviewBloc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: context.getHeight(divide: 2.8),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: context.getWidth(divide: 1.97),
                  width: context.getWidth(divide: 1.97),
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextWidget(
                        text: overviewBloc.locatorOverview.fitnessModel
                                .readinessScoreTitle ??
                            '',
                        fontSize: context.getWidth(divide: 14.51),
                        fontWeight: FontWeight.w500,
                      ),
                      ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomCenter,
                            colors: [grey, black], // Top: gray, Bottom: black
                            stops: [
                              0.57,
                              0.57,
                            ], // Divide the gradient equally
                          ).createShader(bounds);
                        },
                        blendMode: BlendMode.srcIn, // Apply the g
                        child: TextWidget(
                            text:
                                '${overviewBloc.locatorOverview.fitnessModel.readinessScore ?? 0}',
                            fontFamily: 'EuclidSquare-M',
                            fontSize: 70,
                            fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget(
                              text: 'Readiness Score',
                              capitalizeFirstLetterInSentence: true,
                              fontSize: context.getWidth(divide: 35),
                            ),
                            InkWell(
                              onTap: () {
                                showDialogWidget(
                                    context: context,
                                    overviewBloc: overviewBloc);
                              },
                              child: Container(
                                height: 26,
                                width: 26,
                                decoration: const BoxDecoration(
                                    color: white,
                                    boxShadow: [
                                      BoxShadow(color: grey, blurRadius: 10)
                                    ],
                                    shape: BoxShape.circle),
                                child: Icon(
                                  Icons.arrow_forward,
                                  size: context.getWidth(divide: 25),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: context.getWidth(divide: 4.15),
                  width: context.getWidth(divide: 1.97),
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextWidget(
                        text: 'Training\nIntensity',
                        fontSize: context.getWidth(divide: 35),
                        fontWeight: FontWeight.w500,
                        capitalizeFirstLetterInSentence: true,
                      ),
                      TextWidget(
                        text: overviewBloc.locatorOverview.fitnessModel
                                .trainingIntensity ??
                            '',
                        fontSize: context.getWidth(divide: 14.51),
                        fontWeight: FontWeight.w500,
                        capitalizeFirstLetterInWord: true,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ContainerWhiteWidget(
                  value:
                      overviewBloc.locatorOverview.fitnessModel.sleepQuality ??
                          '',
                  title: 'Sleep quality',
                ),
                ContainerWhiteWidget(
                  value:
                      '${overviewBloc.locatorOverview.fitnessModel.sleepHours ?? 0}',
                  title: 'Sleep hours',
                ),
                ContainerWhiteWidget(
                  value:
                      '${overviewBloc.locatorOverview.fitnessModel.rhr ?? 0}',
                  title: 'rhr',
                  isCapitalLetter: true,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
