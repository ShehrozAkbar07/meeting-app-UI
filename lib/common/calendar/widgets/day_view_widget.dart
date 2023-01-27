import 'package:calendar_view/calendar_view.dart';
import 'package:drive_app/common/calendar/model/event.dart';
import 'package:flutter/material.dart';


class DayViewWidget extends StatelessWidget {
  final GlobalKey<DayViewState>? state;
  final double? width;

  const DayViewWidget({
    Key? key,
    this.state,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DayView<Event>(
      key: state,
      width: width,
    );
  }
}
