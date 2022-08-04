import 'package:avaliacao_2/provider/bottom_icon_selected_provider.dart';
import 'package:avaliacao_2/provider/category_selected_provider.dart';
import 'package:avaliacao_2/provider/theme_provider.dart';
import 'package:avaliacao_2/widgets/category_selection_row.dart';
import 'package:avaliacao_2/widgets/diy_ideas.dart';
import 'package:avaliacao_2/widgets/navigation_bar.dart';
import 'package:avaliacao_2/widgets/popular_toolkits_row.dart';
import 'package:avaliacao_2/widgets/search_bar.dart';
import 'package:avaliacao_2/widgets/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0xFFfcbc3d),
    statusBarColor: Color(0xFFfcbc3d),
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CategorySelectedProvider()),
        ChangeNotifierProvider(create: (_) => BottomIconSelectedProvider()),
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
        bottomNavigationBar: const NavigationBottomBar(),
      ),
    );
  }
}
