import 'package:flutter/material.dart';
import 'package:instagram_app/core/widgets/video_player_man.dart';

class SmallVideoContainer extends StatelessWidget {
  const SmallVideoContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      color: Colors.red,
      margin: const EdgeInsets.all(1),
      child: const VideoPlayerMan(videoPath: "videos/output.mp4",),
    );
  }
}