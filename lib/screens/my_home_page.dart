import 'package:avaliacao_2/widgets/home/home_top_bar.dart';
import 'package:avaliacao_2/widgets/home/search_bar.dart';

import 'package:flutter/material.dart';

import 'package:avaliacao_2/widgets/home/category_selection_row.dart';
import 'package:avaliacao_2/widgets/home/diy_ideas.dart';
import 'package:avaliacao_2/widgets/home/popular_toolkits_row.dart';

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
                HomeTopBar(),
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
