import 'package:assignment_gosi/constant/colors.dart';
import 'package:assignment_gosi/utils/screen_extension.dart.dart';
import 'package:assignment_gosi/views/overview_result/bloc/overview_bloc.dart';
import 'package:assignment_gosi/views/overview_result/widgets/app_bar_widget.dart';
import 'package:assignment_gosi/views/overview_result/widgets/bg_image.dart';
import 'package:assignment_gosi/views/overview_result/widgets/bg_layout.dart';
import 'package:assignment_gosi/views/overview_result/widgets/overview_content_tab.dart';
import 'package:assignment_gosi/views/overview_result/widgets/symptoms_content_tap.dart';
import 'package:assignment_gosi/views/overview_result/widgets/training_content_tap.dart';
import 'package:assignment_gosi/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OverviewResultView extends StatefulWidget {
  const OverviewResultView({
    super.key,
  });

  @override
  State<OverviewResultView> createState() => _OverviewResultViewState();
}

class _OverviewResultViewState extends State<OverviewResultView> {
  // PageController for PageView
  PageController pageController = PageController();

  // Selected index for ListView
  int selectedIndex = 0;

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
                                // ======  TabBar Title  ======
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
                                                setState(() {
                                                  selectedIndex = index;
                                                });
                                                pageController.animateToPage(
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
                                                    height:
                                                        index == selectedIndex
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
                                                      color:
                                                          index == selectedIndex
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
                                      controller: pageController,
                                      onPageChanged: (index) {
                                        setState(() {
                                          selectedIndex = index;
                                        });
                                      },
                                      itemCount: overviewBloc
                                          .locatorOverview.homeViewData.length,
                                      itemBuilder: (context, index) {
                                        return index == 0
                                            ? BlocBuilder<OverviewBloc,
                                                OverviewState>(
                                                builder: (context, state) {
                                                  if (state
                                                      is SuccessGetDataState) {
                                                    return OverviewContentTab(
                                                      overviewBloc:
                                                          overviewBloc,
                                                    );
                                                  } else if (state
                                                      is ErrorGetDataState) {
                                                    Container();
                                                  }
                                                  return Container();
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
