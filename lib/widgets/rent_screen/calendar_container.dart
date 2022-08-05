import 'package:avaliacao_2/utils/utils.dart';
import 'package:flutter/material.dart';

class CalendarContainer extends StatelessWidget {
  const CalendarContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final actualDate = DateTime.now();

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${getNameOfIntMonth(actualDate.month)} ${actualDate.day}, ${getNameOfDayOfTheWeek(actualDate.weekday)}',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 15),
              ),
              Row(
                children: [
                  Text(
                    'Change return day',
                    style: TextStyle(
                      color: Theme.of(context).cardColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Icon(
                    Icons.edit_outlined,
                    color: Theme.of(context).cardColor,
                    size: 20,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
