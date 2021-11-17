import 'package:untitled/domain/model/shop/shop.dart';
import 'package:untitled/ui/style/custom_colors.dart';

class ShopRepo {
  static List<Shop> getShops() {
    final shops = [
      Shop(
        url:
            'https://www.manilaonsale.com/wp-content/uploads/2020/10/Bounty-Fresh-Supermarket-2020-Promo-poster-800x800.jpg',
        color: CustomColors.primaryGreen,
        title: 'Shop Online',
      ),
      Shop(
        url:
            'https://static.wixstatic.com/media/c7de6e_6c6025aec6004ac78aefaa22486ef5bc~mv2.jpg/v1/fill/w_1000,h_1410,al_c,q_90,usm_0.66_1.00_0.01/c7de6e_6c6025aec6004ac78aefaa22486ef5bc~mv2.jpg',
        color: CustomColors.primaryBlue,
        title: 'Todays Offers',
      ),
      Shop(
        url:
            'https://cdn1.clickthecity.com/images/articles/content/5b640058d2c905.10031118.jpg',
        color: CustomColors.primaryGreen,
        title: 'Shop Online',
      ),
    ];
    return shops;
  }
}
