import 'package:avaliacao_2/widgets/rent_screen/rented_item_widget.dart';
import 'package:flutter/material.dart';

class RentedItensColumn extends StatelessWidget {
  const RentedItensColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: rentedItens.length,
      shrinkWrap: true,
      itemBuilder: ((_, index) {
        return RentedItemWidget(rentedItem: rentedItens[index], index: index);
      }),
    );
  }
}

class RentedItem {
  String imagePath;
  String name;
  DateTime leaseDate;
  String devolutionAdress;

  RentedItem(
      {required this.imagePath,
      required this.name,
      required this.leaseDate,
      required this.devolutionAdress});
}

final actualDate = DateTime.now();

List<RentedItem> rentedItens = [
  RentedItem(
    imagePath: 'assets/images/general_toolkit.png',
    name: 'Drill tool',
    leaseDate: DateTime(actualDate.year, actualDate.month, actualDate.day + 4),
    devolutionAdress: 'Heesterveld 28 -1102SB -AMSTERDAM',
  ),
  RentedItem(
    imagePath: 'assets/images/drill_tool.png',
    name: 'General toolkit',
    leaseDate: DateTime(actualDate.year, actualDate.month, actualDate.day),
    devolutionAdress: 'Heesterveld 28 -1102SB -AMSTERDAM',
  ),
];
