import 'package:avaliacao_2/widgets/diy_ideas.dart';
import 'package:flutter/material.dart';
import 'package:icon_decoration/icon_decoration.dart';

class DiyVideoWidget extends StatelessWidget {
  final DiyIdeaVideo video;
  const DiyVideoWidget({Key? key, required this.video}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 250,
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage(video.thumbnailPath),
                    ),
                  ),
                ),
                Baseline(
                  baseline: -30,
                  baselineType: TextBaseline.alphabetic,
                  child: DecoratedIcon(
                    icon: Icon(
                      Icons.play_arrow,
                      color:
                          Theme.of(context).iconTheme.color!.withOpacity(0.6),
                      size: 70,
                    ),
                    decoration: const IconDecoration(
                      border: IconBorder(
                        color: Colors.white,
                        width: 3,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  video.title,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: 15),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    '|',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontSize: 15),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '${video.views}',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(width: 1),
                    Icon(
                      Icons.visibility_outlined,
                      color: Theme.of(context).textTheme.bodyLarge?.color,
                      size: 20,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    '|',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontSize: 15),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '${video.likes}',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(width: 1),
                    Icon(
                      Icons.favorite_border,
                      color: Theme.of(context).textTheme.bodyLarge?.color,
                      size: 20,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
