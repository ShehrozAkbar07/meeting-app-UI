import 'package:drive_app/common/utils/appcolors.dart';
import 'package:flutter/material.dart';

class Summary extends StatefulWidget {
  const Summary({Key? key}) : super(key: key);

  @override
  State<Summary> createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  double _currentValue = 0;
  double _currentValue1 = 0;
  double _currentValue2 = 0;
  double _currentValue3 = 0;
  double _currentValue4 = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.02,
              ),
              const Text(
                'Driving Progress',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Basic Skill',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  Text(
                    '0%',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
        
              SliderTheme(
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
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Junctions',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  Text(
                    '0%',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
        
              SliderTheme(
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
                    value: _currentValue1,
                    onChanged: (value) {
                      setState(() {
                        _currentValue1 = value;
                      });
                      // print( 'START: ${value.start}, END: ${value.end}');
                    }),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Manoeuvres',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  Text(
                    '0%',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
        
              SliderTheme(
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
                    value: _currentValue2,
                    onChanged: (value) {
                      setState(() {
                        _currentValue2 = value;
                      });
                      // print( 'START: ${value.start}, END: ${value.end}');
                    }),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Road Use',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  Text(
                    '0%',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
        
              SliderTheme(
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
                    value: _currentValue3,
                    onChanged: (value) {
                      setState(() {
                        _currentValue3 = value;
                      });
                      // print( 'START: ${value.start}, END: ${value.end}');
                    }),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Other',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  Text(
                    '0%',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
        
              SliderTheme(
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
                    value: _currentValue4,
                    onChanged: (value) {
                      setState(() {
                        _currentValue4 = value;
                      });
                      // print( 'START: ${value.start}, END: ${value.end}');
                    }),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              const Text(
                'Lesson Summary',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(height: size.height*0.06,),
              
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Container(
              height: size.height*0.2,
              width: size.width*0.7,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/noresult.png'))
              ),
          ),
            ),
                        SizedBox(height: size.height*0.1,),

              //  CustomSlider(),
            ],
          ),
        ),
      ),
    );
  }
}
