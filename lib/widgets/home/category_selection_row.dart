import 'package:avaliacao_2/provider/category_selected_provider.dart';
import 'package:avaliacao_2/widgets/home/category_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategorySelectionRow extends StatefulWidget {
  const CategorySelectionRow({Key? key}) : super(key: key);

  @override
  State<CategorySelectionRow> createState() => _CategorySelectionRowState();
}

class _CategorySelectionRowState extends State<CategorySelectionRow> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CategorySelectedProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Categories', style: Theme.of(context).textTheme.bodyLarge),
          SizedBox(
            height: 70,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return GestureDetector(
                  onTap: () => provider.selecionaAtividade(index),
                  child: CategoryContainer(
                    index: index,
                    icone: categories[index].icon,
                    texto: categories[index].name,
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

class Category {
  IconData icon;
  String name;

  Category({required this.icon, required this.name});
}

List<Category> categories = [
  Category(icon: Icons.content_copy_rounded, name: 'All Topics'),
  Category(icon: Icons.build_outlined, name: 'Tool List'),
  Category(icon: Icons.videocam_outlined, name: 'Videos'),
  Category(icon: Icons.lock_outlined, name: 'Locked'),
];
