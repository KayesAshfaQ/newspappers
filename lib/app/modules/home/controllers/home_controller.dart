import 'package:get/get.dart';
import 'package:newspappers/app/data/model/newspaper.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final newspaperList = <Newspaper>[].obs;

  final selectedNewspaperId = 0.obs;

  @override
  void onInit() {
    // add some dummy data to the list
    newspaperList.value.addAll([
      Newspaper(
        title: 'Prothom Alo',
        description: 'https://prothomalo.com',
        urlToImage:
            'https://images.prothomalo.com/prothomalo/import/default/2016/03/15/723b7b56de150a31a26c158fde2a8b84-palo-logo.jpg',
      ),
      Newspaper(
        title: 'Local News',
        description: 'This is a local news article.',
        urlToImage:
            'https://images.prothomalo.com/prothomalo/import/default/2016/03/15/723b7b56de150a31a26c158fde2a8b84-palo-logo.jpg',
      ),
      Newspaper(
        title: 'Sports News',
        description: 'This is a sports news article.',
        urlToImage:
            'https://images.prothomalo.com/prothomalo/import/default/2016/03/15/723b7b56de150a31a26c158fde2a8b84-palo-logo.jpg',
      ),
      Newspaper(
        title: 'Breaking News',
        description: 'This is a breaking news article.',
        urlToImage:
            'https://images.prothomalo.com/prothomalo/import/default/2016/03/15/723b7b56de150a31a26c158fde2a8b84-palo-logo.jpg',
      ),
      Newspaper(
        title: 'Local News',
        description: 'This is a local news article.',
        urlToImage:
            'https://images.prothomalo.com/prothomalo/import/default/2016/03/15/723b7b56de150a31a26c158fde2a8b84-palo-logo.jpg',
      ),
      Newspaper(
        title: 'Sports News',
        description: 'This is a sports news article.',
        urlToImage:
            'https://images.prothomalo.com/prothomalo/import/default/2016/03/15/723b7b56de150a31a26c158fde2a8b84-palo-logo.jpg',
      ),
      Newspaper(
        title: 'Breaking News',
        description: 'This is a breaking news article.',
        urlToImage:
            'https://images.prothomalo.com/prothomalo/import/default/2016/03/15/723b7b56de150a31a26c158fde2a8b84-palo-logo.jpg',
      ),
      Newspaper(
        title: 'Local News',
        description: 'This is a local news article.',
        urlToImage:
            'https://images.prothomalo.com/prothomalo/import/default/2016/03/15/723b7b56de150a31a26c158fde2a8b84-palo-logo.jpg',
      ),
      Newspaper(
        title: 'Sports News',
        description: 'This is a sports news article.',
        urlToImage:
            'https://images.prothomalo.com/prothomalo/import/default/2016/03/15/723b7b56de150a31a26c158fde2a8b84-palo-logo.jpg',
      ),
      Newspaper(
        title: 'Breaking News',
        description: 'This is a breaking news article.',
        urlToImage:
            'https://images.prothomalo.com/prothomalo/import/default/2016/03/15/723b7b56de150a31a26c158fde2a8b84-palo-logo.jpg',
      ),
      Newspaper(
        title: 'Local News',
        description: 'This is a local news article.',
        urlToImage:
            'https://images.prothomalo.com/prothomalo/import/default/2016/03/15/723b7b56de150a31a26c158fde2a8b84-palo-logo.jpg',
      ),
      Newspaper(
        title: 'Sports News',
        description: 'This is a sports news article.',
        urlToImage:
            'https://images.prothomalo.com/prothomalo/import/default/2016/03/15/723b7b56de150a31a26c158fde2a8b84-palo-logo.jpg',
      ),
      Newspaper(
        title: 'Breaking News',
        description: 'This is a breaking news article.',
        urlToImage:
            'https://images.prothomalo.com/prothomalo/import/default/2016/03/15/723b7b56de150a31a26c158fde2a8b84-palo-logo.jpg',
      ),
      Newspaper(
        title: 'Local News',
        description: 'This is a local news article.',
        urlToImage:
            'https://images.prothomalo.com/prothomalo/import/default/2016/03/15/723b7b56de150a31a26c158fde2a8b84-palo-logo.jpg',
      ),
      Newspaper(
        title: 'Sports News',
        description: 'This is a sports news article.',
        urlToImage:
            'https://images.prothomalo.com/prothomalo/import/default/2016/03/15/723b7b56de150a31a26c158fde2a8b84-palo-logo.jpg',
      ),
    ]);

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
}
