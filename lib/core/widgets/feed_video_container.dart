import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_app/core/widgets/video_player_man.dart';

class FeedVideoContainer extends StatelessWidget {
  const FeedVideoContainer({
    Key? key,
    required this.videoPath,
  }) : super(key: key);
  final String videoPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        children: [
          Stack(
            children: [
              const SizedBox(
                width: double.infinity,
                height: 500,
                child: VideoPlayerMan(videoPath: "videos/output.mp4",),
              ),
              Positioned(
                top: -1,
                right: 0,
                left: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //////////////////////
                      ///// Users image and name
                      ///////////////////////////
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.red, width: 2),
                              borderRadius: BorderRadius.circular(100),
                              image: const DecorationImage(
                                image: AssetImage('images/adams.jpeg'),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Michael Adams",
                                style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Michael Adams . Original audio",
                                style: TextStyle(fontSize: 12, color: Colors.white),
                              ),
                            ],
                          )

                        ],
                      ),
                      IconButton(
                        icon: const Icon(Icons.more_horiz, color: Colors.white,),
                        splashRadius: 0.2,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                        icon: const FaIcon(
                          FontAwesomeIcons.heart,
                          size: 28,
                        ),
                        splashRadius: 0.2,
                        onPressed: () {}),
                    IconButton(
                        icon: const FaIcon(
                          FontAwesomeIcons.comment,
                          size: 28,
                        ),
                        splashRadius: 0.2,
                        onPressed: () {}),
                    IconButton(
                        icon: const FaIcon(
                          FontAwesomeIcons.paperPlane,
                          size: 28,
                        ),
                        splashRadius: 0.2,
                        onPressed: () {}),
                  ],
                ),
                IconButton(
                  icon: const Icon(
                    Icons.bookmark_border,
                    size: 28,
                  ),
                  splashRadius: 0.2,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "587,498 likes",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Text(
                      "mighty.mike7",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: const Text(
                        "Beautiful Instagram UI complete design by mighty mike",
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "View all 3000 comments",
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "3 days ago",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}