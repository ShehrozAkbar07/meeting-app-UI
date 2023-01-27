import 'package:flutter/material.dart';


// import '../../common/widgets/week_view_widget.dart';
import '../../common/calendar/widgets/week_view_widget.dart';
import '../Pupil_Screens/Main Screen/main_screen_app_bar.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children:  [
          MainScreenAppBar(icon: Icons.settings,),
         const  Expanded(child: WeekViewWidget())
        ],),
      ),
    );
    
  }
}