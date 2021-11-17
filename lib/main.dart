import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/ui/screens/orders/orders_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPortraitOnly();
  setStatusBarStyle();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bringoo',
      theme: ThemeData(
        fontFamily: "Nunito",
      ),
      home: OrdersScreen(),
    );
  }
}

void setPortraitOnly() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}

void setStatusBarStyle() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.light,
  ));
}
