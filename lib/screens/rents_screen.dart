import 'package:avaliacao_2/widgets/top_container.dart';
import 'package:flutter/material.dart';

class RentsScreen extends StatelessWidget {
  const RentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TopContainer(
      child: Column(
        children: [],
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
