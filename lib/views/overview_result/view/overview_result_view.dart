import 'package:assignment_gosi/constant/colors.dart';
import 'package:assignment_gosi/constant/data.dart';
import 'package:assignment_gosi/utils/screen_extension.dart.dart';
import 'package:assignment_gosi/views/overview_result/widgets/app_bar_widget.dart';
import 'package:assignment_gosi/views/overview_result/widgets/bg_image.dart';
import 'package:assignment_gosi/views/overview_result/widgets/bg_layout.dart';
import 'package:assignment_gosi/widget/text_widget.dart';
import 'package:flutter/material.dart';

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
    return DefaultTabController(
      length: 3,
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
                                      itemCount: homeViewData.length,
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
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              TextWidget(
                                                text: homeViewData[index]
                                                    ['title'],
                                                colorText: white,
                                                capitalizeAllLetter: true,
                                              ),
                                              Container(
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 2),
                                                height: index == selectedIndex
                                                    ? 5
                                                    : 3,
                                                width: context.getWidth(
                                                    divide: 3.5),
                                                transform: Matrix4.skewX(-.4),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: noColor,
                                                  ),
                                                  color: index == selectedIndex
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
                                  itemCount: homeViewData.length,
                                  itemBuilder: (context, index) {
                                    return homeViewData[index]['widget'];
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
  }
}
