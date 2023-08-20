import 'package:flutter/material.dart';
import 'package:instagram_app/core/widgets/custom_text_field.dart';
import 'package:instagram_app/core/widgets/default_layer.dart';
import 'package:instagram_app/core/widgets/small_image_container.dart';
import 'package:instagram_app/core/widgets/small_video_container.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List data = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomTextField(
          hintString: "Search",
          containerFilled: true,
          searchPrefixIcon: const Icon(Icons.search),
        ),
        elevation: 0.0,
      ),
      body: DefaultLayer(
        onRefreshAction: () async {
          await Future.delayed(
            const Duration(milliseconds: 5000),
          );
          if (mounted) setState(() {});
        },
        childWidget: ListView(
          children: const [
            RightImageVideoContainer(),
            LeftImageVideoContainer(),
            RightImageVideoContainer(),
            LeftImageVideoContainer(),
          ],
        ),
      ),
    );
  }
}

/////////////
//// Right Images & Video Container Right
//////////////////////////
class LeftImageVideoContainer extends StatelessWidget {
  const LeftImageVideoContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: SmallVideoContainer()),
        Expanded(
          child: Column(
            children: [
              SmallImageContainer(
                containerHeight: 120,
                imagePath: "images/esi.jpg",
              ),
              SmallImageContainer(
                containerHeight: 120,
                imagePath: "images/nike1.webp",
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              SmallImageContainer(
                containerHeight: 120,
                imagePath: "images/nike2.webp",
              ),
              SmallImageContainer(
                containerHeight: 120,
                imagePath: "images/nike1.webp",
              ),
            ],
          ),
        ),
      ],
    );
  }
}

////////////////
//// Left Images & Video Container Left
////////////////////////
class RightImageVideoContainer extends StatelessWidget {
  const RightImageVideoContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Column(
            children: [
              SmallImageContainer(
                containerHeight: 120,
                imagePath: "images/adams.jpeg",
              ),
              SmallImageContainer(
                containerHeight: 120,
                imagePath: "images/city1.jpg",
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              SmallImageContainer(
                containerHeight: 120,
                imagePath: "images/cr7.jpeg",
              ),
              SmallImageContainer(
                containerHeight: 120,
                imagePath: "images/vans1.jpg",
              ),
            ],
          ),
        ),
        Expanded(
          child: SmallVideoContainer(),
        ),
      ],
    );
  }
}
