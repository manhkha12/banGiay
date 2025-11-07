/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class $AssetsI18nGen {
  const $AssetsI18nGen();

  /// File path: assets/i18n/en-US.json
  String get enUS => 'assets/i18n/en-US.json';

  /// File path: assets/i18n/vi-VN.json
  String get viVN => 'assets/i18n/vi-VN.json';

  /// List of all assets
  List<String> get values => [enUS, viVN];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/board_icon.svg
  SvgGenImage get boardIcon => const SvgGenImage('assets/icons/board_icon.svg');

  /// File path: assets/icons/iconBack.svg
  SvgGenImage get iconBack => const SvgGenImage('assets/icons/back.svg');

  /// File path: assets/icons/eyeOn.svg
  SvgGenImage get eyeOn => const SvgGenImage('assets/icons/eyeOn.svg');

  /// File path: assets/icons/eyeOff.svg
  SvgGenImage get eyeOff => const SvgGenImage('assets/icons/eyeOff.svg');

  /// File path: assets/icons/cancel.svg
  SvgGenImage get cancel => const SvgGenImage('assets/icons/cancel.svg');

  /// File path: assets/icons/home.svg
  SvgGenImage get home => const SvgGenImage('assets/icons/home.svg');

  /// File path: assets/icons/shoppingCart.svg
  SvgGenImage get shoppingCart =>
      const SvgGenImage('assets/icons/shoppingCart.svg');

  /// File path: assets/icons/settigns.svg
  SvgGenImage get settings => const SvgGenImage('assets/icons/settings.svg');

  /// File path: assets/icons/logout.svg
  SvgGenImage get logout => const SvgGenImage('assets/icons/logout.svg');

  /// File path: assets/icons/narrow_right.svg
  SvgGenImage get narrowRight =>
      const SvgGenImage('assets/icons/narrow_right.svg');

  /// File path: assets/icons/narrowLeft.svg
  SvgGenImage get narrowLeft =>
      const SvgGenImage('assets/icons/narrow_left.svg');

  /// File path: assets/icons/plus.svg
  SvgGenImage get plus => const SvgGenImage('assets/icons/plus.svg');

  /// File path: assets/icons/bell.svg
  SvgGenImage get bell => const SvgGenImage('assets/icons/bell.svg');

  /// File path: assets/icons/arrow_right.svg
  SvgGenImage get arrowRight =>
      const SvgGenImage('assets/icons/arrow_right.svg');

  /// File path: assets/icons/lock.svg
  SvgGenImage get lock => const SvgGenImage('assets/icons/lock.svg');

  /// File path: assets/icons/arrow_down.svg
  SvgGenImage get arrowDown => const SvgGenImage('assets/icons/arrow_down.svg');
  /// File path: assets/icons/dark_mode.svg
  SvgGenImage get darkMode => const SvgGenImage('assets/icons/dark_mode.svg');
  /// File path: assets/icons/light_mode.svg
  SvgGenImage get lightMode => const SvgGenImage('assets/icons/light_mode.svg');
  /// File path: assets/icons/language.svg
  SvgGenImage get language => const SvgGenImage('assets/icons/language.svg');
  /// File path: assets/icons/profile.svg
  SvgGenImage get profile => const SvgGenImage('assets/icons/profile.svg');
  /// File path: assets/icons/shoe_shop.svg
  SvgGenImage get shoeShop => const SvgGenImage('assets/icons/shoe_shop.svg');
  /// File path: assets/icons/menu.svg
  SvgGenImage get menu => const SvgGenImage('assets/icons/menu.svg');
  /// File path: assets/icons/search.svg
  SvgGenImage get search => const SvgGenImage('assets/icons/search.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        boardIcon,
        iconBack,
        eyeOn,
        eyeOff,
        cancel,
        home,
        shoppingCart,
        settings,
        logout,
        menu,
        search,
        narrowRight,
        narrowLeft,
        plus,
        bell,
        arrowRight
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/configurating.json
  String get configurating => 'assets/images/configurating.json';

  /// File path: assets/images/smart_home.json
  String get smartHome => 'assets/images/smart_home.json';

  /// File path: assets/images/user.png
  AssetGenImage get user => const AssetGenImage('assets/images/user.png');

 /// File path: assets/images/vocherBanner.png
  AssetGenImage get vocherBanner => const AssetGenImage('assets/images/vocher_banner.png');
   /// File path: assets/images/banner_shopping.png
  AssetGenImage get bannerShopping => const AssetGenImage('assets/images/banner_shopping.png');
  /// List of all assets
  List<String> get values => [configurating, smartHome];

  /// List of all assets as images
  List<AssetGenImage> get images => [
        user,
        vocherBanner,
        bannerShopping,
      ];
}

class Assets {
  Assets._();
  static const $AssetsI18nGen i18n = $AssetsI18nGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
