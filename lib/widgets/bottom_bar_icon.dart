import 'package:avaliacao_2/provider/bottom_icon_selected_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomBarIcon extends StatelessWidget {
  final IconData iconEnabled;
  final IconData iconDisabled;
  final int index;

  const BottomBarIcon(
      {Key? key,
      required this.index,
      required this.iconEnabled,
      required this.iconDisabled})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BottomIconSelectedProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 11),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            provider.icons[index] ? iconEnabled : iconDisabled,
            color: provider.icons[index]
                ? Theme.of(context).indicatorColor
                : Colors.black.withOpacity(0.8),
            size: 35,
          ),
          Container(
            height: 5,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: provider.icons[index]
                  ? Theme.of(context).indicatorColor
                  : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
