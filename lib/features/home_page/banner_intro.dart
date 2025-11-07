
import 'package:shoe_store/gen/assets.gen.dart';

class BannerIntro {
  final String imageUrl;
  final bool isLast;

  BannerIntro({
    required this.imageUrl,
    this.isLast = false,
  });

  factory BannerIntro.first() {
    return BannerIntro(
      imageUrl: Assets.images.vocherBanner.path,
    );
  }

  factory BannerIntro.second() {
    return BannerIntro(
      imageUrl: Assets.images.bannerShopping.path,
    );
  }
}
