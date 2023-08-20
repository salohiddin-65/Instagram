import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FeedImageContainer extends StatelessWidget {
  const FeedImageContainer({
    Key? key,
    required this.imagePath,
  }) : super(key: key);
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //////////////////////
              ///// Users image and name
              ///////////////////////////
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
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
                    const Text(
                      "Michael Adams",
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
              ),
              IconButton(
                icon: const Icon(Icons.more_horiz),
                splashRadius: 0.2,
                onPressed: () {},
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: 350,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imagePath), fit: BoxFit.fill),
            ),
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