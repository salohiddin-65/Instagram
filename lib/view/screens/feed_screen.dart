import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_app/core/widgets/current_user_story_img.dart';
import 'package:instagram_app/core/widgets/default_layer.dart';
import 'package:instagram_app/core/widgets/feed_image_container.dart';
import 'package:instagram_app/core/widgets/feed_video_container.dart';
import 'package:instagram_app/core/widgets/users_story_image.dart';
import 'package:instagram_app/data/data.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  final DataInfo dataInfo = DataInfo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: false,
        leading: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: ImageIcon(
            AssetImage(
              'images/Instagram_dark.png',
            ),
          ),
        ),
        leadingWidth: 150.0,
        actions: [
          IconButton(
            onPressed: () {},
            splashRadius: 0.2,
            icon: const Icon(Icons.add_box_outlined),
          ),
          IconButton(
            onPressed: () {},
            splashRadius: 0.2,
            icon: const FaIcon(FontAwesomeIcons.heart),
          ),
          IconButton(
            onPressed: () {},
            splashRadius: 0.2,
            icon: const Icon(FontAwesomeIcons.facebookMessenger),
          ),
        ],
      ),
      body: DefaultLayer(
        onRefreshAction: () async {
          await Future.delayed(
            const Duration(milliseconds: 5000),
          );
          if (mounted) setState(() {});
        },
        childWidget: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const CurrentUserStoryImg(
                      label: "Your story",
                      containerOneWidth: 80,
                      containerOneHeight: 80,
                      positionLeft: 40.0,
                      positionTop: 40,
                    ),
                    UserStoryImg(
                      containerOneWidth: 80,
                      containerOneHeight: 120,
                      containerTwoWidth: 80,
                      containerTwoHeight: 80,
                      textPositionTop: 90,
                      textLabel: "Kallehallden",
                      storyColor: Colors.red,
                      storyColorBorder: 3,
                      imageString: 'images/kal.jpg',
                    ),
                    UserStoryImg(
                      containerOneWidth: 80,
                      containerOneHeight: 120,
                      containerTwoWidth: 80,
                      containerTwoHeight: 80,
                      textPositionTop: 90,
                      textLabel: "Michael Adams Boateng",
                      storyColor: Colors.red,
                      storyColorBorder: 3,
                      imageString: 'images/clever.jpg',
                    ),
                    UserStoryImg(
                      containerOneWidth: 80,
                      containerOneHeight: 120,
                      containerTwoWidth: 80,
                      containerTwoHeight: 80,
                      textPositionTop: 90,
                      textLabel: "Michael Adams Boateng",
                      storyColor: Colors.red,
                      storyColorBorder: 3,
                      imageString: 'images/esi.jpg',
                    ),
                    UserStoryImg(
                      containerOneWidth: 80,
                      containerOneHeight: 120,
                      containerTwoWidth: 80,
                      containerTwoHeight: 80,
                      textPositionTop: 90,
                      textLabel: "Michael Adams Boateng",
                      storyColor: Colors.red,
                      storyColorBorder: 3,
                      imageString: 'images/ourben.jpg',
                    ),
                  ],
                ),
              ),

              const FeedImageContainer(
                imagePath: "images/cr7.jpeg",
              ),
              const FeedVideoContainer(
                videoPath: "videoPath",
              )
              // FeedImageContainer(videoPath: "video",),
            ],
          ),
        ),
      ),
    );
  }
}
