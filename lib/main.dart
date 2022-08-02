import 'package:avaliacao_2/provider/category_selected_provider.dart';
import 'package:avaliacao_2/provider/theme_provider.dart';
import 'package:avaliacao_2/widgets/category_selection_row.dart';
import 'package:avaliacao_2/widgets/diy_ideas.dart';
import 'package:avaliacao_2/widgets/popular_toolkits_row.dart';
import 'package:avaliacao_2/widgets/search_bar.dart';
import 'package:avaliacao_2/widgets/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CategorySelectedProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: Themes.temaClaro,
        debugShowCheckedModeBanner: false,
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
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
      body: SingleChildScrollView(
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
    );
  }
}
