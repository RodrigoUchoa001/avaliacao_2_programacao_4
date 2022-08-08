import 'package:avaliacao_2/widgets/home/diy_video_widget.dart';
import 'package:flutter/material.dart';

class DiyIdeas extends StatelessWidget {
  const DiyIdeas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Ideias de DIY',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'ver todos',
                style: TextStyle(
                  color: Theme.of(context).cardColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 230,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: videos.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return DiyVideoWidget(video: videos[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class DiyIdeaVideo {
  String thumbnailPath;
  String title;
  int views;
  int likes;

  DiyIdeaVideo({
    required this.thumbnailPath,
    required this.title,
    required this.views,
    required this.likes,
  });
}

List<DiyIdeaVideo> videos = [
  DiyIdeaVideo(
    thumbnailPath: 'assets/images/dyi_shelves.jpg',
    title: 'Prateleiras',
    views: 572,
    likes: 126,
  ),
  DiyIdeaVideo(
    thumbnailPath: 'assets/images/dyi_shelves.jpg',
    title: 'Projeto de Jardim',
    views: 403,
    likes: 98,
  ),
];
