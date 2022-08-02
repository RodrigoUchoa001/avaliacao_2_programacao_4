import 'package:flutter/material.dart';

class CategorySelectionRow extends StatefulWidget {
  const CategorySelectionRow({Key? key}) : super(key: key);

  @override
  State<CategorySelectionRow> createState() => _CategorySelectionRowState();
}

class _CategorySelectionRowState extends State<CategorySelectionRow> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Categories', style: Theme.of(context).textTheme.bodyLarge),
        SizedBox(
          height: 80,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return Container(
                height: 80,
                margin: const EdgeInsets.all(10),
                color: Theme.of(context).appBarTheme.backgroundColor,
                child: Row(
                  children: [
                    Icon(
                      categories[index].icon,
                      color: Colors.black,
                    ),
                    Text(categories[index].name),
                  ],
                ),
              );
            },
          ),
        ),
      ],
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
