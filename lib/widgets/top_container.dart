import 'package:flutter/material.dart';

class TopContainer extends StatelessWidget {
  final Widget child;
  const TopContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).appBarTheme.backgroundColor,
        ),
        child: child,
      ),
    );
  }
}
