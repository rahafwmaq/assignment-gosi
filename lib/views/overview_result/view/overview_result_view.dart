import 'package:assignment_gosi/constant/colors.dart';
import 'package:assignment_gosi/utils/screen_extension.dart.dart';
import 'package:assignment_gosi/views/overview_result/bloc/overview_bloc.dart';
import 'package:assignment_gosi/views/overview_result/widgets/app_bar_widget.dart';
import 'package:assignment_gosi/views/overview_result/widgets/bg_image.dart';
import 'package:assignment_gosi/views/overview_result/widgets/bg_layout.dart';
import 'package:assignment_gosi/views/overview_result/widgets/overview_content_tab.dart';
import 'package:assignment_gosi/views/overview_result/widgets/symptoms_content_tap.dart';
import 'package:assignment_gosi/views/overview_result/widgets/training_content_tap.dart';
import 'package:assignment_gosi/widget/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class OverviewResultView extends StatelessWidget {
  const OverviewResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final overviewBloc = context.read<OverviewBloc>();

        return DefaultTabController(
          length: overviewBloc.locatorOverview.homeViewData.length,
          child: Scaffold(
            body: SizedBox(
              width: context.getWidth(),
              height: context.getHeight(),
              child: Stack(
                children: [
                  // ======  BG  ======
                  const BgImage(),

                  // ======  BG Layout  ======
                  const BgLayout(),

                  SafeArea(
                    child: ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        // ======  AppBar  ======
                        const AppBarWidget(),

                        // ======  TapBarWidget  ======
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            width: context.getWidth(),
                            height: context.getHeight(divide: 1.15),
                            child: Column(
                              children: [
                                // ======  TabBat Title  ======
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 20),
                                  child: SizedBox(
                                    height: context.getHeight(divide: 25),
                                    child: Center(
                                      child: ListView.builder(
                                          shrinkWrap: true,
                                          itemCount: overviewBloc
                                              .locatorOverview
                                              .homeViewData
                                              .length,
                                          scrollDirection: Axis.horizontal,
                                          itemBuilder: (context, index) {
                                            return GestureDetector(
                                              onTap: () {
                                               
                                                  overviewBloc.selectedIndex =
                                                      index;
                                             
                                                overviewBloc.pageController
                                                    .animateToPage(
                                                  index,
                                                  duration: const Duration(
                                                      milliseconds: 500),
                                                  curve: Curves.easeInOut,
                                                );
                                              },
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  TextWidget(
                                                    text: overviewBloc
                                                            .locatorOverview
                                                            .homeViewData[index]
                                                        ['title'],
                                                    colorText: white,
                                                    capitalizeAllLetter: true,
                                                  ),
                                                  Container(
                                                    margin: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 2),
                                                    height: index ==
                                                            overviewBloc
                                                                .selectedIndex
                                                        ? 5
                                                        : 3,
                                                    width: context.getWidth(
                                                        divide: 3.5),
                                                    transform:
                                                        Matrix4.skewX(-.4),
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: noColor,
                                                      ),
                                                      color: index ==
                                                              overviewBloc
                                                                  .selectedIndex
                                                          ? white
                                                          : grayTransparent,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          }),
                                    ),
                                  ),
                                ),

                                // ======  TabBat Content  ======
                                Expanded(
                                  child: PageView.builder(
                                      controller: overviewBloc.pageController,
                                      onPageChanged: (index) {
                                        overviewBloc.selectedIndex = index;
                                      },
                                      itemCount: overviewBloc
                                          .locatorOverview.homeViewData.length,
                                      itemBuilder: (context, index) {
                                        return index == 0
                                            ? BlocBuilder<OverviewBloc,
                                                OverviewState>(
                                                builder: (context, state) {
                                                  return OverviewContentTab(
                                                    overviewBloc: overviewBloc,
                                                  );
                                                },
                                              )
                                            : index == 1
                                                ? const TrainingContentTap()
                                                : index == 2
                                                    ? const SymptomsContentTap()
                                                    : Container();
                                      }),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}