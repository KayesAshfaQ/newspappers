import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';

import '../../../data/model/newspaper.dart';
import '../../home/controllers/home_controller.dart';

class NewsDetailsController extends GetxController {
  var newspaper = Newspaper(title: '', description: '', urlToImage: '').obs;
  var progress = 0.0.obs;

  InAppWebViewController? webViewController;
  late PullToRefreshController pullToRefreshController;

  @override
  void onInit() {
    getNewsPaper();
    initWebViewController();

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  getNewsPaper() {
    // access home controller to get id
    final homeController = Get.find<HomeController>();
    newspaper.value =
        homeController.newspaperList[homeController.selectedNewspaperId.value];
  }

  initWebViewController() {
    pullToRefreshController = PullToRefreshController(
      options: PullToRefreshOptions(
        color: Colors.blue,
      ),
      onRefresh: () async {
        debugPrint("onRefresh >>>> ");

        if (Platform.isAndroid) {
          webViewController?.reload();
          // reset the webview
          //webViewController?.loadUrl(urlRequest: URLRequest(url: url));
        } else if (Platform.isIOS) {
          webViewController?.loadUrl(
              urlRequest: URLRequest(url: await webViewController?.getUrl()));
        }
      },
    );
  }
}
