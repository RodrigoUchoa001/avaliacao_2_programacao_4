import 'package:avaliacao_2/widgets/rent_screen/rent_top_selected_button.dart';
import 'package:avaliacao_2/widgets/top_container.dart';
import 'package:flutter/material.dart';

class RentsScreen extends StatelessWidget {
  const RentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TopContainer(
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (int i = 0; i < rentTopButtons.length; i++)
                  RentTopSelectedButton(index: i, text: rentTopButtons[i].text),
              ],
            ),
          ),
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
  RentTopButton(text: 'Previous'),
  RentTopButton(text: 'Current'),
  RentTopButton(text: 'Reserved'),
];
