import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../widget/newspaper.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.find<HomeController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),

      // create a grid view with 2 columns to show the news

      // optimize this grid view for landscape mode

      body: OrientationBuilder(
        builder: (context, orientation) {
          final crossAxisCount = orientation == Orientation.portrait ? 2 : 4;
          return GridView.count(
            childAspectRatio: 4 / 2.8,
            crossAxisCount: crossAxisCount,
            children: List.generate(
              controller.newspaperList.length,
              (index) => NewspaperWidget(
                index: index,
                controller: controller,
              ),
            ),
          );
        },
      ),
    );
  }
}