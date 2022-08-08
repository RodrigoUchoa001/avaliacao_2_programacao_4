import 'package:avaliacao_2/utils/utils.dart';
import 'package:avaliacao_2/widgets/rent_screen/rented_itens_column.dart';
import 'package:flutter/material.dart';

class RentedItemWidget extends StatelessWidget {
  final RentedItem rentedItem;
  final int index;
  const RentedItemWidget(
      {Key? key, required this.rentedItem, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoriaAtivada = Theme.of(context).appBarTheme.backgroundColor;
    final categoriaDesativada = Theme.of(context).disabledColor;

    final Color? corBorda = Theme.of(context).textTheme.bodyLarge?.color;
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(8.0),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: corBorda!.withOpacity(0.3)),
      ),
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Image.asset(rentedItem.imagePath, width: 120, height: 120),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${rentedItem.name}',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: Colors.black, fontSize: 18),
                        ),
                        const SizedBox(height: 25),
                        Text(
                          'The lease expires on',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: Colors.black),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '${getNameOfIntMonth(rentedItem.leaseDate.month)} ${rentedItem.leaseDate.day}, ${getNameOfDayOfTheWeek(rentedItem.leaseDate.weekday)}',
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontSize: 18,
                                    color: _getContainerColor(index, context),
                                  ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                decoration: BoxDecoration(
                  color: const Color(0xFFEFF1F3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Icon(
                        Icons.location_on_outlined,
                        color: Theme.of(context).textTheme.bodyLarge!.color,
                        size: 30,
                      ),
                    ),
                    Text(
                      '${rentedItem.devolutionAdress}',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 12),
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: _getContainerColor(index, context),
              radius: 6,
            ),
          ),
        ],
      ),
    );
  }

  Color? _getContainerColor(int index, BuildContext context) {
    final index0 = Theme.of(context).appBarTheme.backgroundColor;
    final index1 = Theme.of(context).cardColor;

    if (index == 0) {
      return index0;
    } else if (index == 1) {
      return index1;
    } else {
      return index0;
    }
  }
}
