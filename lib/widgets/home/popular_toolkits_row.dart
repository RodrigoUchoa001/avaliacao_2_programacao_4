import 'package:avaliacao_2/widgets/home/toolkit_widget.dart';
import 'package:flutter/material.dart';

class PopularToolkitsRow extends StatelessWidget {
  const PopularToolkitsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Conjuntos Populares',
              style: Theme.of(context).textTheme.bodyLarge),
          SizedBox(
            height: 230,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: toolkits.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return ToolkitWidget(toolkit: toolkits[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Toolkit {
  String imagePath;
  String title;
  int price;
  int rating;

  Toolkit(
      {required this.imagePath,
      required this.title,
      required this.price,
      required this.rating});
}

List<Toolkit> toolkits = [
  Toolkit(
      imagePath: 'assets/images/carpentry_toolkit.png',
      title: 'Conj. de Carpintaria',
      price: 12,
      rating: 4),
  Toolkit(
      imagePath: 'assets/images/gardening_toolkit.png',
      title: 'Conj. de Jardinagem',
      price: 10,
      rating: 5),
  Toolkit(
      imagePath: 'assets/images/general_toolkit.png',
      title: 'Conj. Geral',
      price: 10,
      rating: 5),
];
