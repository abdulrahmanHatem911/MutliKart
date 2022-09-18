import 'package:flutter/material.dart';

void navigatorTo(Widget widget, BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (BuildContext context) => widget),
  );
}

void navigatorPop(BuildContext context) {
  Navigator.of(context).pop();
}

void navigatorFinish(BuildContext context, Widget widget) {
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (BuildContext contaxt) => widget),
    (route) => false,
  );
}
