import 'package:flutter/material.dart';
import 'package:untitled/gen/assets.gen.dart';
import 'package:untitled/ui/components/box.dart';
import 'package:untitled/ui/style/custom_colors.dart';
import 'package:untitled/ui/style/custom_textstyles.dart';

class OrdersList extends StatelessWidget {
  const OrdersList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        decoration: BoxDecoration(
          color: CustomColors.white,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(16),
            topLeft: Radius.circular(16),
          ),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 4),
              blurRadius: 24,
              spreadRadius: 0,
              color: Colors.black.withOpacity(0.15),
            ),
          ],
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'My Orders',
              style: CustomTextStyles.subtitle1,
            ),
            const HBox(18),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: CustomColors.lightBeige.withOpacity(
                  0.1,
                ),
              ),
              padding: const EdgeInsets.fromLTRB(
                18,
                18,
                26,
                18,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Assets.icons.mapsRoute.svg(),
                  const WBox(17),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const HBox(4),
                        Text(
                          'Pending Delivery ?? BF-12046',
                          style: CustomTextStyles.initials.copyWith(
                            color: CustomColors.primaryGreen,
                          ),
                        ),
                        const HBox(5),
                        const Text(
                          'Bringoo Fresh',
                          style: CustomTextStyles.h4,
                        ),
                        const HBox(4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              '09 Nov ??? 19:09',
                              style: CustomTextStyles.small3,
                            ),
                            Text(
                              '39,70 ???',
                              style: CustomTextStyles.h3,
                            ),
                          ],
                        ),
                        const HBox(12),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
