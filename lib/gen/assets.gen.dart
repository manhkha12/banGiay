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

  /// File path: assets/icons/home.svg
  SvgGenImage get home => const SvgGenImage('assets/icons/homePage.svg');

  /// File path: assets/icons/wifi.svg
  SvgGenImage get wifi => const SvgGenImage('assets/icons/wifii.svg');

  /// File path: assets/icons/profile.svg
  SvgGenImage get profile => const SvgGenImage('assets/icons/profilePage.svg');

  /// File path: assets/icons/device.svg
  SvgGenImage get device => const SvgGenImage('assets/icons/device.svg');

  /// File path: assets/icons/menu_home.svg
  SvgGenImage get homeMenuTab =>
      const SvgGenImage('assets/icons/menu_home.svg');

  /// File path: assets/icons/refresh.svg
  SvgGenImage get refresh => const SvgGenImage('assets/icons/refresh.svg');

  /// File path: assets/icons/plus.svg
  SvgGenImage get plus => const SvgGenImage('assets/icons/plussvg.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        boardIcon,
        iconBack,
        eyeOn,
        homeMenuTab,
        eyeOff,
        wifi,
        home,
        profile,
        device,
        plus,
        refresh
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/configurating.json
  String get configurating => 'assets/images/configurating.json';

  /// File path: assets/images/smart_home.json
  String get smartHome => 'assets/images/smart_home.json';

  /// File path: assets/images/home_control.json
  String get homeControl => 'assets/images/home_control.json';

  /// File path: assets/images/home_service.json
  String get homeService => 'assets/images/home_service.json';

  /// File path: assets/images/hand_wave.json
  String get handWave => 'assets/images/hand_wave.json';

  /// File path: assets/images/user.png
  AssetGenImage get user => const AssetGenImage('assets/images/user.png');

  /// File path: assets/images/user.png
  AssetGenImage get smartHomeBackground =>
      const AssetGenImage('assets/images/smart_home_background.png');

  /// List of all assets
  List<String> get values =>
      [configurating, smartHome, homeControl, homeService, handWave];

  /// List of all assets as images
  List<AssetGenImage> get images => [user, smartHomeBackground];
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
