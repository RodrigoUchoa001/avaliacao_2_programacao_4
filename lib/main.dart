import 'package:avaliacao_2/provider/theme_provider.dart';
import 'package:avaliacao_2/widgets/category_selection_row.dart';
import 'package:avaliacao_2/widgets/search_bar.dart';
import 'package:avaliacao_2/widgets/top_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Themes.temaClaro,
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          TopBar(),
          SearchBar(),
          CategorySelectionRow(),
        ],
      ),
    );
  }
}
