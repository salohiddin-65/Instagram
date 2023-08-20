// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerMan extends StatefulWidget {
  const VideoPlayerMan(
      {Key? key, required this.videoPath, this.isReelPage = false})
      : super(key: key);

  final String videoPath;
  final bool isReelPage;

  // final double screenHeight;
  // final double screenWidth;

  @override
  State<VideoPlayerMan> createState() => _VideoPlayerManState();
}

class _VideoPlayerManState extends State<VideoPlayerMan> {
  late VideoPlayerController _videoPlayerController;
  ValueNotifier currentPosition = ValueNotifier(null);
  bool volumeSet = false;

  @override
  void initState() {
    super.initState();

    _videoPlayerController = VideoPlayerController.asset(widget.videoPath)
      ..setVolume(0)
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((_) => _videoPlayerController.play());
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        SizedBox.expand(
          child: FittedBox(
            fit: BoxFit.cover,
            child: SizedBox(
              width: 10.0,
              height: 10.0,
              child: _videoPlayerController.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: _videoPlayerController.value.aspectRatio,
                      child: VideoPlayer(_videoPlayerController),
                    )
                  : const Center(
                      child: CircularProgressIndicator(
                        color: Colors.blue,
                      ),
                    ),
            ),
          ),
        ),
        widget.isReelPage
            ? Center(
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      volumeSet ? volumeSet = false : volumeSet = true;
                    });
                    volumeSet
                        ? _videoPlayerController.setVolume(100)
                        : _videoPlayerController.setVolume(0);
                  },
                  icon: Icon(
                    volumeSet ? Icons.volume_up : Icons.volume_off,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              )
            : Positioned(
                top: 450,
                right: 0,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      volumeSet ? volumeSet = false : volumeSet = true;
                    });
                    volumeSet
                        ? _videoPlayerController.setVolume(100)
                        : _videoPlayerController.setVolume(0);
                  },
                  icon: Icon(
                    volumeSet ? Icons.volume_up : Icons.volume_off,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ),
        widget.isReelPage?
            GestureDetector(
              onLongPress: (){
                setState(() {
                  _videoPlayerController.pause();
                });
              },

              onLongPressCancel: (){
                setState(() {
                  _videoPlayerController.play();
                });
              },
            )
            :
        Container()
      ],
    );
  }
}

///////
// Play or Pause video
//////////////////////////////