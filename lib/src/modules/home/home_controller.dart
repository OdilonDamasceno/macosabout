import 'package:flutter/cupertino.dart';

class HomeController {
  PageController pageController = PageController();

  void goToPage(int index) => pageController.jumpToPage(index);
}
