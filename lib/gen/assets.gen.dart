/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/catalog.svg
  String get catalog => 'assets/icons/catalog.svg';

  /// File path: assets/icons/check-circle.svg
  String get checkCircle => 'assets/icons/check-circle.svg';

  /// File path: assets/icons/exit.svg
  String get exit => 'assets/icons/exit.svg';

  /// File path: assets/icons/favorite.svg
  String get favorite => 'assets/icons/favorite.svg';

  /// File path: assets/icons/full-star.svg
  String get fullStar => 'assets/icons/full-star.svg';

  /// File path: assets/icons/gift.svg
  String get gift => 'assets/icons/gift.svg';

  /// File path: assets/icons/home.svg
  String get home => 'assets/icons/home.svg';

  /// File path: assets/icons/map.svg
  String get map => 'assets/icons/map.svg';

  /// File path: assets/icons/menu.svg
  String get menu => 'assets/icons/menu.svg';

  /// File path: assets/icons/notification.svg
  String get notification => 'assets/icons/notification.svg';

  /// File path: assets/icons/order.svg
  String get order => 'assets/icons/order.svg';

  /// File path: assets/icons/person.svg
  String get person => 'assets/icons/person.svg';

  /// File path: assets/icons/phone-call.svg
  String get phoneCall => 'assets/icons/phone-call.svg';

  /// File path: assets/icons/question.svg
  String get question => 'assets/icons/question.svg';

  /// File path: assets/icons/reviews.svg
  String get reviews => 'assets/icons/reviews.svg';

  /// File path: assets/icons/setting.svg
  String get setting => 'assets/icons/setting.svg';

  /// File path: assets/icons/shop.svg
  String get shop => 'assets/icons/shop.svg';

  /// File path: assets/icons/star.svg
  String get star => 'assets/icons/star.svg';

  /// File path: assets/icons/telegram.svg
  String get telegram => 'assets/icons/telegram.svg';

  /// File path: assets/icons/viber.svg
  String get viber => 'assets/icons/viber.svg';

  /// File path: assets/icons/waiting-list.svg
  String get waitingList => 'assets/icons/waiting-list.svg';

  /// List of all assets
  List<String> get values => [
        catalog,
        checkCircle,
        exit,
        favorite,
        fullStar,
        gift,
        home,
        map,
        menu,
        notification,
        order,
        person,
        phoneCall,
        question,
        reviews,
        setting,
        shop,
        star,
        telegram,
        viber,
        waitingList
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/avatar.png
  AssetGenImage get avatarPng =>
      const AssetGenImage('assets/images/avatar.png');

  /// File path: assets/images/avatar.svg
  String get avatarSvg => 'assets/images/avatar.svg';

  /// File path: assets/images/logo.svg
  String get logo => 'assets/images/logo.svg';

  /// File path: assets/images/product.png
  AssetGenImage get product => const AssetGenImage('assets/images/product.png');

  /// File path: assets/images/product2.png
  AssetGenImage get product2 =>
      const AssetGenImage('assets/images/product2.png');

  /// List of all assets
  List<dynamic> get values => [avatarPng, avatarSvg, logo, product, product2];
}

class $AssetsTranslationsGen {
  const $AssetsTranslationsGen();

  /// File path: assets/translations/ru.json
  String get ru => 'assets/translations/ru.json';

  /// File path: assets/translations/uk.json
  String get uk => 'assets/translations/uk.json';

  /// List of all assets
  List<String> get values => [ru, uk];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsTranslationsGen translations = $AssetsTranslationsGen();
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

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
