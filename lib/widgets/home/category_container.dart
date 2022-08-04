import 'package:avaliacao_2/provider/category_selected_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryContainer extends StatefulWidget {
  final IconData icone;
  final String texto;
  final int index;
  const CategoryContainer(
      {Key? key, required this.icone, required this.texto, required this.index})
      : super(key: key);

  @override
  State<CategoryContainer> createState() => _CategoryContainerState();
}

class _CategoryContainerState extends State<CategoryContainer> {
  @override
  Widget build(BuildContext context) {
    final CategorySelectedProvider provider =
        Provider.of<CategorySelectedProvider>(context);

    final categoriaAtivada = Theme.of(context).appBarTheme.backgroundColor;
    final categoriaDesativada = Theme.of(context).disabledColor;

    final Color? corBorda = Theme.of(context).textTheme.bodyLarge?.color;

    return Container(
      width: 120,
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      decoration: BoxDecoration(
        color: (provider.categories[widget.index]
            ? categoriaAtivada
            : categoriaDesativada),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: corBorda!.withOpacity(0.3)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            widget.icone,
            // color: Theme.of(context).textTheme.bodyLarge?.color,
            color: (provider.categories[widget.index]
                ? Colors.white
                : Theme.of(context).textTheme.bodyLarge?.color),
            size: 30,
          ),
          Text(
            widget.texto,
            style: TextStyle(
              // color: Theme.of(context).textTheme.bodyLarge?.color,
              color:
                  (provider.categories[widget.index] ? Colors.white : corBorda),
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
