import 'package:flutter/material.dart';

class LocalPage extends StatelessWidget {
  const LocalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Local',
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 30),
      ),
    );
  }
}
