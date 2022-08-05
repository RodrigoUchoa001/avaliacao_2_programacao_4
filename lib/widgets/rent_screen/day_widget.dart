import 'package:avaliacao_2/utils/utils.dart';
import 'package:avaliacao_2/widgets/rent_screen/calendar_days_row.dart';
import 'package:flutter/material.dart';

class DayWidget extends StatelessWidget {
  final int index;
  final Day day;
  const DayWidget({Key? key, required this.index, required this.day})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color? corBorda = Theme.of(context).textTheme.bodyLarge?.color;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 50,
        decoration: BoxDecoration(
          color: (_getContainerColor(index, context)),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: corBorda!.withOpacity(0.3)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '${getNameOfDayOfTheWeekThreeChar(day.dayOfTheWeek)}',
              style: _getStyleOfText(index, context)!
                  .copyWith(fontWeight: FontWeight.normal),
            ),
            Text(
              '${day.day}',
              style: _getStyleOfText(index, context),
            ),
          ],
        ),
      ),
    );
  }

  TextStyle? _getStyleOfText(int index, BuildContext context) {
    if (index == 0 || index == 4) {
      return Theme.of(context)
          .textTheme
          .bodyLarge!
          .copyWith(color: Colors.white);
    } else {
      return Theme.of(context).textTheme.bodyLarge!;
    }
  }

  Color? _getContainerColor(int index, BuildContext context) {
    final closeLease = Theme.of(context).cardColor;
    final farLease = Theme.of(context).appBarTheme.backgroundColor;
    final normalDay = Theme.of(context).disabledColor;

    if (index == 0) {
      return closeLease;
    } else if (index == 4) {
      return farLease;
    } else {
      return normalDay;
    }
  }
}
