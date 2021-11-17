import 'package:flutter/widgets.dart';

class HBox extends SizedBox {
  const HBox(double height, {Key? key}) : super(height: height, width: 0, key: key);
}

// ignore: prefer-single-widget-per-file
class WBox extends SizedBox {
  const WBox(double width, {Key? key}) : super(height: 0, width: width, key: key);
}
