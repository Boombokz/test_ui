import 'package:flutter/material.dart';
import 'package:untitled/ui/screens/orders/components/orders_list.dart';
import 'package:untitled/ui/screens/orders/components/shows_list_content.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
          ),
          const ShopsListContent(),
          const OrdersList(),
        ],
      ),
    );
  }
}
