import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:untitled/data/repository/shop_repo.dart';
import 'package:untitled/gen/assets.gen.dart';
import 'package:untitled/ui/components/box.dart';
import 'package:untitled/ui/style/custom_colors.dart';
import 'package:untitled/ui/style/custom_textstyles.dart';

class ShopsListContent extends StatelessWidget {
  const ShopsListContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
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
                          padding: const EdgeInsets.symmetric(horizontal: 8),
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
                                      borderRadius: const BorderRadius.only(
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
    );
  }
}
