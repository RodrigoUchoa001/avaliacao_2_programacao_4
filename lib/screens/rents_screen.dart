import 'package:avaliacao_2/widgets/rent_screen/calendar_container.dart';
import 'package:avaliacao_2/widgets/rent_screen/calendar_days_row.dart';
import 'package:avaliacao_2/widgets/rent_screen/rent_top_bar_buttons.dart';
import 'package:avaliacao_2/widgets/rent_screen/rented_itens_column.dart';
import 'package:flutter/material.dart';

class RentsScreen extends StatelessWidget {
  const RentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          RentTopBarButtons(),
          CalendarContainer(),
          CalendarDaysRow(),
          RentedItensColumn(),
        ],
      ),
    );
  }
}
