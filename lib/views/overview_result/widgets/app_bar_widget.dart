import 'package:assignment_gosi/constant/colors.dart';
import 'package:assignment_gosi/utils/screen_extension.dart.dart';
import 'package:assignment_gosi/widget/text_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: context.getHeight(divide: 12),
      width: context.getWidth(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // ======  profile pic  ======
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                    height: context.getWidth(divide: 15),
                    width: context.getWidth(divide: 15),
                    clipBehavior: Clip.hardEdge,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: Image.asset('assets/images/profile_pic.png')),
              ),

              // ======  center content  ======
              SizedBox(
                width: context.getWidth(divide: 2.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_ios_rounded,
                      color: white,
                      size: context.getWidth(divide: 21),
                    ),
                    TextWidget(
                      text: 'Tody',
                      colorText: white,
                      fontSize: context.getWidth(divide: 21),
                      fontWeight: FontWeight.w400,
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: white,
                      size: context.getWidth(divide: 21),
                    ),
                  ],
                ),
              ),

              // ====== notification icon ======
              Align(
                alignment: Alignment.topLeft,
                child: Stack(
                  children: [
                    SizedBox(
                        height: context.getHeight(divide: 25),
                        child:
                            Image.asset('assets/images/notification_icon.png')),
                    Positioned(
                      right: context.getWidth(divide: 150),
                      top: context.getWidth(divide: 450),
                      child: Container(
                        height: context.getWidth(divide: 35),
                        width: context.getWidth(divide: 35),
                        decoration: const BoxDecoration(boxShadow: [
                          BoxShadow(
                              blurRadius: 5,
                              color: black,
                              spreadRadius: 2,
                              offset: Offset(2, 0))
                        ], color: darkGreen, shape: BoxShape.circle),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // ======  drop arrow icon  ======
          Icon(
            Icons.arrow_drop_down,
            color: white,
            size: context.getWidth(divide: 16.5),
          ),
        ],
      ),
    );
  }
}
