import 'package:flutter/material.dart';

import 'package:avaliacao_2/widgets/category_selection_row.dart';
import 'package:avaliacao_2/widgets/diy_ideas.dart';
import 'package:avaliacao_2/widgets/popular_toolkits_row.dart';
import 'package:avaliacao_2/widgets/search_bar.dart';
import 'package:avaliacao_2/widgets/top_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: SingleChildScrollView(
            child: Column(
              children: const [
                TopBar(),
                SearchBar(),
                CategorySelectionRow(),
                PopularToolkitsRow(),
                DiyIdeas(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
