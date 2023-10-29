import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import 'package:get/get.dart';

import '../controllers/news_details_controller.dart';

class NewsDetailsView extends GetView<NewsDetailsController> {
  const NewsDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.find<NewsDetailsController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('NewsDetailsView'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            InAppWebView(
              initialUrlRequest: URLRequest(
                url: Uri.parse(controller.newspaper.value.description),
              ),
              pullToRefreshController: controller.pullToRefreshController,
              onWebViewCreated: (webViewController) {
                controller.webViewController = webViewController;
              },
              onLoadStart: (webViewController, url) {},
              onLoadStop: (webViewController, url) async {
                controller.pullToRefreshController.endRefreshing();
              },
              onLoadError: (webViewController, url, code, message) {
                controller.pullToRefreshController.endRefreshing();
              },
              onProgressChanged: (webViewController, progress) {
                if (progress == 100) {
                  controller.pullToRefreshController.endRefreshing();
                }

                // update progress value
                controller.progress.value = progress / 100;
                print(
                    'progress: $progress, controller.progress: ${controller.progress.value}');
              },
            ),
            Obx(
              () => controller.progress < 1.0
                  ? LinearProgressIndicator(value: controller.progress.value)
                  : const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
