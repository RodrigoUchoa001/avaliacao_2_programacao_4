import 'package:avaliacao_2/widgets/rent_screen/rent_top_selected_button.dart';
import 'package:avaliacao_2/widgets/top_container.dart';
import 'package:flutter/material.dart';

class RentTopBarButtons extends StatelessWidget {
  const RentTopBarButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TopContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (int i = 0; i < rentTopButtons.length; i++)
            RentTopSelectedButton(index: i, text: rentTopButtons[i].text),
        ],
      ),
    );
  }
}

class RentTopButton {
  String text;
  RentTopButton({required this.text});
}

List<RentTopButton> rentTopButtons = [
  RentTopButton(text: 'Anteriores'),
  RentTopButton(text: 'Atual'),
  RentTopButton(text: 'Reservados'),
];
