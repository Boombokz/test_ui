import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:untitled/data/repository/shop_repo.dart';
import 'package:untitled/gen/assets.gen.dart';
import 'package:untitled/ui/components/box.dart';
import 'package:untitled/ui/style/custom_colors.dart';
import 'package:untitled/ui/style/custom_textstyles.dart';

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
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                Assets.images.background.path,
              ),
              fit: BoxFit.cover,
            )),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 22),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 32,
                            child: Assets.images.avatar.image(),
                          ),
                          Assets.icons.bellDot.svg(),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 16,
                      right: 100,
                    ),
                    child: Text(
                      'Guten Abend, Christian',
                      style: CustomTextStyles.h1,
                    ),
                  ),
                  const HBox(34),
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 280,
                      viewportFraction: 0.6,
                      enableInfiniteScroll: false,
                    ),
                    items: ShopRepo.getShops()
                        .map((item) => CachedNetworkImage(
                              imageUrl: item.url,
                              fit: BoxFit.cover,
                              imageBuilder: (context, imageProvider) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: imageProvider,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: 18,
                                        left: 24,
                                        right: 50,
                                        child: Text(
                                          item.title,
                                          style: CustomTextStyles.h2,
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        bottom: 0,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 14,
                                            horizontal: 24,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.only(
                                              topRight: Radius.circular(8),
                                              bottomLeft: Radius.circular(8),
                                            ),
                                            color: item.color,
                                          ),
                                          child: const Text(
                                            'Select Store',
                                            style: CustomTextStyles.initials,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              errorWidget: (context, url, error) => Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                  const HBox(33),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Assets.icons.pin.svg(),
                          const HBox(4),
                          Text(
                            'My Location',
                            style: CustomTextStyles.initials
                                .copyWith(color: CustomColors.primaryLightBlue),
                          )
                        ],
                      ),
                      const WBox(46),
                      Column(
                        children: [
                          Assets.icons.shoplist.svg(),
                          const HBox(4),
                          Text(
                            'Shopping List',
                            style: CustomTextStyles.initials
                                .copyWith(color: CustomColors.primaryLightBlue),
                          )
                        ],
                      ),
                      const WBox(53),
                      Column(
                        children: [
                          Assets.icons.cart.svg(),
                          const HBox(4),
                          Text(
                            'Shop Cart',
                            style: CustomTextStyles.initials
                                .copyWith(color: CustomColors.primaryLightBlue),
                          )
                        ],
                      ),
                    ],
                  ),
                  const HBox(33),
                ],
              ),
            ),
          ),
          Positioned(
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
                                'Pending Delivery · BF-12046',
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    '09 Nov ∙ 19:09',
                                    style: CustomTextStyles.small3,
                                  ),
                                  Text(
                                    '39,70 €',
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
          ),
        ],
      ),
    );
  }
}
