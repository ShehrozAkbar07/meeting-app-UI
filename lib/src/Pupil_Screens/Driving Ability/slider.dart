import 'package:flutter/material.dart';

import '../../../common/utils/appcolors.dart';



class CustomSlider extends StatefulWidget {
  const CustomSlider({Key? key}) : super(key: key);

  @override
  State<Slider> createState() => _SliderState();
}

class _SliderState extends State<Slider> {
  double _currentValue = 0;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: const SliderThemeData(
        rangeThumbShape: RoundRangeSliderThumbShape(
          enabledThumbRadius: 8,
          elevation: 5,
          disabledThumbRadius: 8,
          pressedElevation: 5,
        ),
        trackHeight: 6.5,
        thumbColor: Colors.white,
        valueIndicatorColor: Color(AppColors.primary),
        inactiveTrackColor: Color.fromARGB(255, 208, 202, 202),
        activeTrackColor: Color(AppColors.primary),
        tickMarkShape: RoundSliderTickMarkShape(),
        overlayColor: Color(AppColors.primary),
        overlappingShapeStrokeColor: Color(AppColors.primary),
        overlayShape: RoundSliderOverlayShape(
          overlayRadius: 14,
        ),
      ),
      child: Slider(
          value: _currentValue,
          onChanged: (value) {
            setState(() {
              _currentValue = value;
            });
            // print( 'START: ${value.start}, END: ${value.end}');
          }),
    );
  }
}
