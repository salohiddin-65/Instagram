import 'package:flutter/material.dart';
import 'package:instagram_app/core/widgets/real_video_container.dart';
import 'package:instagram_app/core/widgets/video_player_man.dart';
import 'package:instagram_app/data/data.dart';

class ReelsScreen extends StatefulWidget {
  const ReelsScreen({Key? key}) : super(key: key);

  @override
  State<ReelsScreen> createState() => _ReelsScreenState();
}

class _ReelsScreenState extends State<ReelsScreen> {
  final DataInfo _dataInfo = DataInfo();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: _dataInfo.users.length,
        itemBuilder: (context, index) {
          return ReelVideoContainer(
            screenHeight: screenHeight,
            screenWidth: screenWidth,
            videoContainerWidget: VideoPlayerMan(
              isReelPage: true,
              videoPath: _dataInfo.users[index]["videoPath"],
            ),
          );
        },
      ),
    );
  }
}
