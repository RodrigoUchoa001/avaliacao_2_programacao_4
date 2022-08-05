import 'package:avaliacao_2/provider/rent_top_selected_button_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RentTopSelectedButton extends StatelessWidget {
  final int index;
  final String text;
  const RentTopSelectedButton(
      {Key? key, required this.index, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<RentTopSelectedButtonProvider>(context);
    return GestureDetector(
      onTap: () => provider.changeActivatedIcon(index),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: provider.buttons[index] ? Colors.white : Colors.transparent,
          boxShadow: [
            BoxShadow(
              color: provider.buttons[index]
                  ? Colors.grey.withOpacity(0.3)
                  : Colors.transparent,
              blurRadius: 25,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: provider.buttons[index]
                ? Theme.of(context).cardColor
                : Colors.white.withOpacity(0.9),
          ),
        ),
      ),
    );
  }
}
