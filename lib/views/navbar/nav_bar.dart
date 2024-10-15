import 'package:assignment_gosi/constant/colors.dart';
import 'package:assignment_gosi/utils/screen_extension.dart.dart';
import 'package:assignment_gosi/views/overview_result/view/overview_result_view.dart';
import 'package:assignment_gosi/views/view2/view2.dart';
import 'package:assignment_gosi/views/view3/view3.dart';
import 'package:assignment_gosi/views/view4/view4.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 0;

  final List<Widget> screens = [
    const OverviewResultView(),
    const View2(),
    const View3(),
    const View4(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        backgroundColor: white,
        height: context.getHeight(divide: 13),
        elevation: 0,
        surfaceTintColor: noColor,
        indicatorColor: noColor,
        selectedIndex: currentIndex,
        onDestinationSelected: (index) {
          currentIndex = index;
          setState(() {});
        },
        destinations: [
          NavigationDestination(
              icon: Image.asset(
                'assets/images/navbar_1.png',
                color: currentIndex == 0 ? black : grey,
              ),
              label: ''),
          NavigationDestination(
              icon: Image.asset(
                'assets/images/navbar_2.png',
                color: currentIndex == 1 ? black : grey,
              ),
              label: ''),
          NavigationDestination(
              icon: Image.asset(
                'assets/images/navbar_3.png',
                color: currentIndex == 2 ? black : grey,
              ),
              label: ''),
          NavigationDestination(
              icon: Image.asset(
                'assets/images/navbar_4.png',
                color: currentIndex == 3 ? black : grey,
              ),
              label: '')
        ],
      ),
      body: SizedBox(child: screens[currentIndex]),
    );
  }
}
