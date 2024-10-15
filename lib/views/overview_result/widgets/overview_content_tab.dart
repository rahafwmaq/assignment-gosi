import 'package:assignment_gosi/constant/colors.dart';
import 'package:assignment_gosi/utils/navigator_extension.dart';
import 'package:assignment_gosi/utils/screen_extension.dart.dart';
import 'package:assignment_gosi/widget/text_widget.dart';
import 'package:assignment_gosi/widgetss/liner_indicator_widget.dart';
import 'package:flutter/material.dart';
import 'package:glass/glass.dart';

class OverviewContentTab extends StatefulWidget {
  const OverviewContentTab({
    super.key,
  });

  @override
  State<OverviewContentTab> createState() => _OverviewContentTabState();
}

class _OverviewContentTabState extends State<OverviewContentTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextWidget(
          text: 'moderate readiness',
          colorText: white,
          capitalizeFirstLetterInWord: true,
          fontSize: context.getWidth(divide: 14.54),
          fontWeight: FontWeight.w400,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: TextWidget(
            text: 'you may need to adjust high intensity type training today',
            colorText: white,
            textAlign: TextAlign.center,
            capitalizeFirstLetterInWord: true,
            fontSize: 17,
            fontWeight: FontWeight.w400,
          ),
        ),
        Padding(
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
                            text: 'Medium',
                            fontSize: context.getWidth(divide: 14.51),
                            fontWeight: FontWeight.w500,
                          ),
                          ShaderMask(
                            shaderCallback: (Rect bounds) {
                              return const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomCenter,
                                colors: [
                                  grey,
                                  black
                                ], // Top: gray, Bottom: black
                                stops: [
                                  0.57,
                                  0.57,
                                ], // Divide the gradient equally
                              ).createShader(bounds);
                            },
                            blendMode: BlendMode.srcIn, // Apply the g
                            child: const TextWidget(
                                text: '58',
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
                                    showAdaptiveDialog(
                                      context: context,
                                      builder: (context) {
                                        return Stack(
                                          children: [
                                            SizedBox(
                                              height: context.getHeight(),
                                              width: context.getWidth(),
                                            ).asGlass(
                                                blurX: 5,
                                                blurY: 5,
                                                tintColor: grayTransparent),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 100,
                                                      horizontal: 40),
                                              child: Center(
                                                child: Container(
                                                  clipBehavior: Clip.hardEdge,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                  child: Stack(
                                                    children: [
                                                      Image.asset(
                                                        'assets/images/full_BG.png',
                                                        fit: BoxFit.cover,
                                                        // height: context.getHeight(
                                                        //     divide: 1),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                top: 200,
                                                                bottom: 15),
                                                        child: Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: ClipPath(
                                                            clipBehavior:
                                                                Clip.hardEdge,
                                                            clipper:
                                                                ObliqueClipper(),
                                                            child: Container(
                                                              decoration:
                                                                  const BoxDecoration(
                                                                color: white,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          20),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          20),
                                                                ),
                                                              ),
                                                              child: Align(
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    Container(
                                                                      padding: EdgeInsets.only(
                                                                          top: context.getHeight(
                                                                              divide: 10)),
                                                                      width: context.getWidth(
                                                                          divide:
                                                                              1.6),
                                                                      child:
                                                                          const Material(
                                                                        color: Colors
                                                                            .transparent,
                                                                        child:
                                                                            TextWidget(
                                                                          fontSize:
                                                                              14,
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          text:
                                                                              'At WILD we are measuring your readiness for your training based on your check-ins and past training load. This gives you a solid measurement over time and makes it easy for you to plan your week.',
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                          .all(
                                                                          30),
                                                                      child:
                                                                          TextButton(
                                                                        onPressed:
                                                                            () =>
                                                                                context.popView(),
                                                                        child:
                                                                            const TextWidget(
                                                                          text:
                                                                              'Close',
                                                                          colorText:
                                                                              grey,
                                                                          capitalizeAllLetter:
                                                                              true,
                                                                        ),
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: Container(
                                                          margin: EdgeInsets.only(
                                                              top: context
                                                                  .getHeight(
                                                                      divide:
                                                                          5)),
                                                          height:
                                                              context.getWidth(
                                                                  divide: 1.97),
                                                          width:
                                                              context.getWidth(
                                                                  divide: 1.97),
                                                          decoration: BoxDecoration(
                                                              boxShadow: const [
                                                                BoxShadow(
                                                                    color:
                                                                        grayTransparent,
                                                                    blurRadius:
                                                                        20,
                                                                    spreadRadius:
                                                                        3)
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                              color: white),
                                                          child: Material(
                                                            color: noColor,
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                TextWidget(
                                                                  text:
                                                                      'Medium',
                                                                  fontSize: context
                                                                      .getWidth(
                                                                          divide:
                                                                              13),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                                ShaderMask(
                                                                  shaderCallback:
                                                                      (Rect
                                                                          bounds) {
                                                                    return const LinearGradient(
                                                                      begin: Alignment
                                                                          .topLeft,
                                                                      end: Alignment
                                                                          .bottomCenter,
                                                                      colors: [
                                                                        grey,
                                                                        black
                                                                      ], // Top: gray, Bottom: black
                                                                      stops: [
                                                                        0.61,
                                                                        0.61,
                                                                      ], // Divide the gradient equally
                                                                    ).createShader(
                                                                        bounds);
                                                                  },
                                                                  blendMode:
                                                                      BlendMode
                                                                          .srcIn, // Apply the gradient on the text
                                                                  child: const TextWidget(
                                                                      text:
                                                                          '58',
                                                                      fontFamily:
                                                                          'EuclidSquare-M',
                                                                      fontSize:
                                                                          70,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    );
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
                            text: 'Med',
                            fontSize: context.getWidth(divide: 14.51),
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ContainerWhiteWidget(
                      value: 'Good',
                      title: 'Sleep quality',
                    ),
                    ContainerWhiteWidget(
                      value: '7.5',
                      title: 'Sleep hours',
                    ),
                    ContainerWhiteWidget(
                      value: '43',
                      title: 'rhr',
                      isCapitalLetter: true,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
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

class ContainerWhiteWidget extends StatelessWidget {
  const ContainerWhiteWidget({
    super.key,
    required this.title,
    required this.value,
    this.isCapitalLetter,
  });

  final String title;
  final String value;
  final bool? isCapitalLetter;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.getWidth(divide: 4.15),
      width: context.getWidth(divide: 2.75),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextWidget(
            text: value,
            fontSize: context.getWidth(divide: 14.51),
            fontWeight: FontWeight.w500,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: TextWidget(
              text: title,
              fontSize: context.getWidth(divide: 35),
              fontWeight: FontWeight.w500,
              capitalizeAllLetter: isCapitalLetter ?? false,
            ),
          )
        ],
      ),
    );
  }
}

class ObliqueClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, 100); // Start from top-left with offset
    path.lineTo(size.width, 0.0); // Draw diagonal to top-right
    path.lineTo(size.width, size.height); // Draw straight line to bottom-right
    path.lineTo(0.0, size.height); // Draw straight line to bottom-left
    path.close(); // Close the path
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; // Reclip only if needed
  }
}
