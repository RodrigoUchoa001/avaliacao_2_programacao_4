import 'package:avaliacao_2/widgets/popular_toolkits_row.dart';
import 'package:flutter/material.dart';

class ToolkitWidget extends StatelessWidget {
  final Toolkit toolkit;
  const ToolkitWidget({Key? key, required this.toolkit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color? corBorda = Theme.of(context).textTheme.bodyLarge?.color;
    return Container(
      width: 150,
      height: 230,
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: corBorda!.withOpacity(0.3)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Image.asset(toolkit.imagePath, width: 120, height: 120),
            Text(
              toolkit.title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '${toolkit.price}\$/day',
                    style: TextStyle(
                        color: Colors.red.withOpacity(0.7),
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(
                        '${toolkit.rating}/5',
                        style: TextStyle(
                            color: Colors.grey.withOpacity(0.7),
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.star,
                        size: 20,
                        color: Theme.of(context).appBarTheme.backgroundColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
