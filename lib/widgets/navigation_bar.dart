import 'package:avaliacao_2/widgets/bottom_bar_icon.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/bottom_icon_selected_provider.dart';

class NavigationBottomBar extends StatelessWidget {
  const NavigationBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BottomIconSelectedProvider>(context);
    return Container(
      height: 60,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            blurRadius: 25,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (int i = 0; i < bottomIcons.length; i++)
            GestureDetector(
              onTap: () => provider.changeActivatedIcon(i),
              child: BottomBarIcon(
                index: i,
                iconEnabled: bottomIcons[i].iconEnabled,
                iconDisabled: bottomIcons[i].iconDisabled,
              ),
            )
        ],
      ),
    );
  }
}

class BottomIcon {
  IconData iconEnabled;
  IconData iconDisabled;
  BottomIcon({required this.iconEnabled, required this.iconDisabled});
}

List<BottomIcon> bottomIcons = [
  BottomIcon(iconEnabled: Icons.build, iconDisabled: Icons.build_outlined),
  BottomIcon(
      iconEnabled: Icons.location_on, iconDisabled: Icons.location_on_outlined),
  BottomIcon(
      iconEnabled: Icons.calendar_today,
      iconDisabled: Icons.calendar_today_outlined),
  BottomIcon(
      iconEnabled: Icons.person, iconDisabled: Icons.person_outline_outlined),
];
