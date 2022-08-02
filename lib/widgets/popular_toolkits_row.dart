import 'package:flutter/material.dart';

class PopularToolkitsRow extends StatelessWidget {
  const PopularToolkitsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final StarColor = Theme.of(context).appBarTheme.backgroundColor;
    final Color? corBorda = Theme.of(context).textTheme.bodyLarge?.color;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Popular toolkits',
              style: Theme.of(context).textTheme.bodyLarge),
          SizedBox(
            height: 230,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: toolkits.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return Container(
                  width: 150,
                  height: 230,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: corBorda!.withOpacity(0.3)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      children: [
                        Image.asset(toolkits[index].imagePath,
                            width: 120, height: 120),
                        Text(
                          toolkits[index].title,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '${toolkits[index].price}\$/day',
                              style: TextStyle(
                                  color: Colors.red.withOpacity(0.7),
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Text(
                                  '${toolkits[index].rating}/5',
                                  style: TextStyle(
                                      color: Colors.grey.withOpacity(0.7),
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 20,
                                  color: Theme.of(context)
                                      .appBarTheme
                                      .backgroundColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
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
      title: 'Carpentry toolkit',
      price: 12,
      rating: 4),
  Toolkit(
      imagePath: 'assets/images/gardening_toolkit.png',
      title: 'Gardening toolkit',
      price: 10,
      rating: 5),
  Toolkit(
      imagePath: 'assets/images/general_toolkit.png',
      title: 'General toolkit',
      price: 10,
      rating: 5),
];
