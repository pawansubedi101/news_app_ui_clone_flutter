import 'package:flutter/material.dart';

Future goTONextPage(BuildContext context, Widget page) {
  return Navigator.push(context, MaterialPageRoute(
    builder: (context) {
      return page;
    },
  ));
}

Future goTONextPageWithReplaceMent(BuildContext context, Widget page) {
  return Navigator.pushReplacement(context, MaterialPageRoute(
    builder: (context) {
      return page;
    },
  ));
}
