import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Perfil',
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 30),
      ),
    );
  }
}
