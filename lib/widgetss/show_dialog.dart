import 'package:assignment_gosi/constant/colors.dart';
import 'package:assignment_gosi/utils/navigator_extension.dart';
import 'package:assignment_gosi/utils/screen_extension.dart.dart';
import 'package:assignment_gosi/views/overview_result/bloc/overview_bloc.dart';
import 'package:assignment_gosi/widget/text_widget.dart';
import 'package:assignment_gosi/widgetss/oblique_clipper.dart';
import 'package:flutter/material.dart';
import 'package:glass/glass.dart';

showDialogWidget({required BuildContext context ,  required OverviewBloc overviewBloc}) {
  return               showAdaptiveDialog(
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
                                                      BorderRadius
                                                          .circular(20)),
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
                                                      alignment: Alignment
                                                          .center,
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
                                                              bottomLeft:
                                                                  Radius.circular(
                                                                      20),
                                                              bottomRight:
                                                                  Radius.circular(
                                                                      20),
                                                            ),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                Alignment
                                                                    .bottomCenter,
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Container(
                                                                  padding:
                                                                      EdgeInsets.only(top: context.getHeight(divide: 10)),
                                                                  width: context.getWidth(
                                                                      divide:
                                                                          1.6),
                                                                  child:
                                                                      Material(
                                                                    color:
                                                                        Colors.transparent,
                                                                    child:
                                                                        TextWidget(
                                                                      fontSize:
                                                                          14,
                                                                      textAlign:
                                                                          TextAlign.center,
                                                                      text:
                                                                          overviewBloc.locatorOverview.fitnessModel.readinessScoreDesc ?? '',
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                      .all(
                                                                      30),
                                                                  child:
                                                                      TextButton(
                                                                    onPressed: () =>
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
                                                    alignment: Alignment
                                                        .topCenter,
                                                    child: Container(
                                                      margin: EdgeInsets.only(
                                                          top: context
                                                              .getHeight(
                                                                  divide:
                                                                      5)),
                                                      height: context
                                                          .getWidth(
                                                              divide:
                                                                  1.97),
                                                      width: context
                                                          .getWidth(
                                                              divide:
                                                                  1.97),
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
                                                              text: overviewBloc
                                                                      .locatorOverview
                                                                      .fitnessModel
                                                                      .readinessScoreTitle ??
                                                                  '',
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
                                                              child: TextWidget(
                                                                  text:
                                                                      '${overviewBloc.locatorOverview.fitnessModel.readinessScore ?? 0}',
                                                                  fontFamily:
                                                                      'EuclidSquare-M',
                                                                  fontSize:
                                                                      70,
                                                                  fontWeight:
                                                                      FontWeight.w600),
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
}