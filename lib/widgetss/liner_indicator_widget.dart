import 'package:assignment_gosi/constant/colors.dart';
import 'package:assignment_gosi/utils/screen_extension.dart.dart';
import 'package:assignment_gosi/widget/text_widget.dart';
import 'package:flutter/material.dart';

class LinerIndicatorWidget extends StatefulWidget {
  const LinerIndicatorWidget({
    super.key,
  });

  @override
  State<LinerIndicatorWidget> createState() => _LinerIndicatorWidgetState();
}

class _LinerIndicatorWidgetState extends State<LinerIndicatorWidget> {
  double _sliderValue = 7.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const TextWidget(
          text: '0',
          colorText: white,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
                trackHeight: 1,
                thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 10),
                overlayShape: const RoundSliderOverlayShape(overlayRadius: 0),
                thumbColor: white,
                activeTrackColor: noColor,
                inactiveTrackColor: noColor),
            child: Stack(
              children: [
                SizedBox(
                  width: context.getWidth(divide: 1.3),
                  height: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 2, right: 2),
                        width: 40,
                        height: 8,
                        transform: Matrix4.skewX(-.3),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: noColor,
                            ),
                            color: grayTransparent),
                      ),
                      Container(
                        width: 80,
                        height: 8,
                        transform: Matrix4.skewX(-.3),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: noColor,
                            ),
                            color: white),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 2, right: 2),
                        width: 40,
                        height: 8,
                        transform: Matrix4.skewX(-.3),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: noColor,
                            ),
                            color: grayTransparent),
                      ),
                      Container(
                        width: 80,
                        height: 8,
                        transform: Matrix4.skewX(-.3),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: noColor,
                            ),
                            color: grayTransparent),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 2),
                        width: 40,
                        height: 8,
                        transform: Matrix4.skewX(-.3),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: noColor,
                            ),
                            color: grayTransparent),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    width: context.getWidth(divide: 1.3),
                    child: Slider(
                      value: _sliderValue,
                      label: '${_sliderValue.toInt()}',
                      min: 0,
                      max: 28,
                      divisions: 100,
                      onChanged: (value) {
                        setState(() {
                          print(value);
                          _sliderValue = value;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const TextWidget(
          text: '28',
          colorText: white,
        ),
      ],
    );
  }
}
