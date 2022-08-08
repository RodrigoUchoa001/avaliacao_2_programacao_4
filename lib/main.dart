import 'package:avaliacao_2/provider/bottom_icon_selected_provider.dart';
import 'package:avaliacao_2/provider/category_selected_provider.dart';
import 'package:avaliacao_2/provider/rent_top_selected_button_provider.dart';
import 'package:avaliacao_2/provider/theme_provider.dart';
import 'package:avaliacao_2/screens/local_screen.dart';
import 'package:avaliacao_2/screens/my_home_page.dart';
import 'package:avaliacao_2/screens/profile_page.dart';
import 'package:avaliacao_2/screens/rents_screen.dart';
import 'package:avaliacao_2/widgets/navigation_bottom_bar.dart';
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
        ChangeNotifierProvider(create: (_) => RentTopSelectedButtonProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: Themes.temaClaro,
        debugShowCheckedModeBanner: false,
        home: const FirstWidget(),
      ),
    );
  }
}

class FirstWidget extends StatelessWidget {
  const FirstWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BottomIconSelectedProvider>(context);

    List<Widget> screens = const [
      MyHomePage(),
      LocalPage(),
      RentsScreen(),
      ProfilePage(),
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Themes.temaClaro.scaffoldBackgroundColor,
        body: screens.elementAt(provider.getIconActivated()),
        bottomNavigationBar: const NavigationBottomBar(),
      ),
    );
  }
}
