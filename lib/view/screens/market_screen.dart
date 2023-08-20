import 'package:flutter/material.dart';
import 'package:instagram_app/core/widgets/custom_text_field.dart';
import 'package:instagram_app/core/widgets/default_layer.dart';
import 'package:instagram_app/data/data.dart';

class MarketScreen extends StatefulWidget {
  const MarketScreen({Key? key}) : super(key: key);

  @override
  State<MarketScreen> createState() => _MarketScreenState();
}

class _MarketScreenState extends State<MarketScreen> {
  final DataInfo _dataInfo = DataInfo();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(120),
            child: Container(
              height: 120,
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              color: Theme.of(context).scaffoldBackgroundColor,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        width: 250,
                        child: const Row(
                          children: [
                            Flexible(
                              child: Text(
                                "Shop",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            splashRadius: 0.2,
                            icon: const Icon(Icons.bookmarks),
                          ),
                          IconButton(
                            onPressed: () {},
                            splashRadius: 0.2,
                            icon: const Icon(Icons.menu),
                          ),
                        ],
                      )
                    ],
                  ),
                  CustomTextField(
                    hintString: "search",
                    containerFilled: true,
                    searchPrefixIcon: const Icon(Icons.search),
                  ),
                ],
              ),
            ),
          ),
          body: DefaultLayer(
            onRefreshAction: () async {
              await Future.delayed(
                const Duration(milliseconds: 5000),
              );
              if (mounted) setState(() {});
            },
            childWidget: ListView.builder(
              itemCount: _dataInfo.marketItems.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Container(
                      height: 240,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "images/${_dataInfo.marketItems[index]["item1Image"]}"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      height: 240,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "images/${_dataInfo.marketItems[index]["item2Image"]}"),
                            fit: BoxFit.cover),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

// Row(
// children: [
// Container(
// height: 240,
// width: MediaQuery.of(context).size.width/2,
// decoration: BoxDecoration(
// image: DecorationImage(
// image: AssetImage("images/${_dataInfo.MarketItems[index]}"),
// fit: BoxFit.cover),
// ),
// ),
// Container(
// height: 240,
// width: MediaQuery.of(context).size.width/2,
// decoration: BoxDecoration(
// image: DecorationImage(
// image: AssetImage("images/${_dataInfo.MarketItems[index]}"),
// fit: BoxFit.cover),
// ),
// ),
// ],
// );