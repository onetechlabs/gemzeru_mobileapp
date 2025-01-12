import 'package:flutter/material.dart';
import 'package:gemzeru/components/animations/fade_page_route.dart';

class Router {
  static Future pushPage(BuildContext context, Widget page) async {
    return await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return page;
        },
      ),
    );
  }

  static pushPageDialog(BuildContext context, Widget page) async {
    return await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return page;
        },
        fullscreenDialog: true,
      ),
    );
  }

  static pushPageReplacement(BuildContext context, Widget page) async {
    return await Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return page;
        },
      ),
    );
  }

  static pushPageWithFadeAnimation(BuildContext context, Widget page) async {
    return await Navigator.pushReplacement(
      context,
      FadePageRoute(
        page,
      ),
    );
  }
}
