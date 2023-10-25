import 'package:flutter/material.dart';

import '../controllers/home_controller.dart';

class NewspaperWidget extends StatelessWidget {
  const NewspaperWidget({
    super.key,
    required this.index,
    required this.controller,
  });

  final int index;
  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                // show the image of the news
                Expanded(
                  child: Image.network(
                    controller.newspaperList[index].urlToImage,
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                ),

                // show the title of the news
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    controller.newspaperList[index].title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // show vertical divider
          const VerticalDivider(),

          Flexible(
            flex: 1,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // show favorite icon
                IconButton(
                  //reduce button splash radius
                  splashRadius: 20,
                  onPressed: () {},
                  icon: const Icon(Icons.star),
                ),

                const Divider(),
                // show menu icon
                IconButton(
                  splashRadius: 20,
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
