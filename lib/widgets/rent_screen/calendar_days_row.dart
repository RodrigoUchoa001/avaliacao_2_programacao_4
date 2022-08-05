import 'package:avaliacao_2/utils/utils.dart';
import 'package:avaliacao_2/widgets/rent_screen/day_widget.dart';
import 'package:flutter/material.dart';

class CalendarDaysRow extends StatelessWidget {
  const CalendarDaysRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: getRemainingDaysOfTheMonth().length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return DayWidget(
            index: index,
            day: getRemainingDaysOfTheMonth()[index],
          );
        },
      ),
    );
  }
}

class Day {
  int day;
  String dayOfTheWeek;

  Day({required this.day, required this.dayOfTheWeek});
}

List<Day> getRemainingDaysOfTheMonth() {
  DateTime actualDate = DateTime.now();
  List<Day> days = [
    Day(
      day: actualDate.day,
      dayOfTheWeek: getNameOfDayOfTheWeek(actualDate.weekday),
    )
  ];

  while (!nextDaysIsAnotherMonth(actualDate)) {
    actualDate =
        DateTime(actualDate.year, actualDate.month, actualDate.day + 1);
    days.add(
      Day(
        day: actualDate.day,
        dayOfTheWeek: getNameOfDayOfTheWeek(actualDate.weekday),
      ),
    );
  }

  // days.forEach((element) {
  //   debugPrint('${element.day}');
  // });
  return days;
}

bool nextDaysIsAnotherMonth(DateTime date) {
  final actualDate = date;
  date = DateTime(actualDate.year, actualDate.month, actualDate.day + 1);

  if (actualDate.month != date.month) {
    return true;
  } else {
    return false;
  }
}
