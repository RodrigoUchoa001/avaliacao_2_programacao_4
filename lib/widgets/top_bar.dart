import 'package:avaliacao_2/widgets/top_container.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TopContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(Icons.home_outlined),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Homely',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Everything you need for your DIY',
                    style: Theme.of(context).textTheme.titleMedium,
                  )
                ],
              ),
            ],
          ),
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: const [
              Icon(Icons.notifications_outlined),
              Positioned(
                right: 5,
                top: 5,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 8,
                  child: CircleAvatar(backgroundColor: Colors.red, radius: 6),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
