import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:vandal/common/service/translation_service.dart';

class LanguageBottomSheet {
  static PersistentBottomSheetController<void> show(BuildContext context) =>
      showBottomSheet<void>(
        context: context,
        builder: (context) => const _LanguageBottomSheetView(),
      );
}

class _LanguageBottomSheetView extends StatelessWidget {
  const _LanguageBottomSheetView({Key? key}) : super(key: key);

  void changeLocale(BuildContext context, String locale) {
    final translationService = TranslationService();
    translationService.setLocale(context, Locale(locale));
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   invalidateAllWidgetTree(Application.navigatorKey.currentContext!);
    // });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final supportedLocales = context.supportedLocales;

    bool isLanguageSupported(String language) =>
        supportedLocales.any((locale) => locale.languageCode == language);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 8),
        Container(
          width: 64,
          height: 4,
          decoration: ShapeDecoration(
            shape: const StadiumBorder(),
            color: Colors.red,
          ),
        ),
        SizedBox(height: 12),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 12),
          child: Row(
            children: [
              Text(
                'locale',
              ),
              const Spacer(),
              InkWell(
                onTap: () => Navigator.pop(context),
                customBorder: const CircleBorder(),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.back_hand),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 22),
        if (isLanguageSupported('uk'))
          _LanguageItem(
            title: 'UA',
            image: Icon(Icons.ac_unit),
            value: 'uk',
            groupValue: context.locale.languageCode,
            onChanged: (_) => changeLocale(context, 'uk'),
          ),
        const _Separator(),
        if (isLanguageSupported('ru'))
          _LanguageItem(
            title: 'RU',
            image: Icon(Icons.abc),
            value: 'ru',
            groupValue: context.locale.languageCode,
            onChanged: (_) => changeLocale(context, 'ru'),
          ),
        const _Separator(),
        SizedBox(height: 32),
      ],
    );
  }
}

class _LanguageItem<T> extends StatelessWidget {
  const _LanguageItem({
    Key? key,
    required this.title,
    required this.image,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  }) : super(key: key);

  final String title;
  final Widget image;
  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged!(value),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Row(
          children: [
            _CustomRadioButton(
              value: value,
              groupValue: groupValue,
              onChanged: onChanged,
            ),
            SizedBox(width: 12),
            image,
            SizedBox(width: 8),
            Text(
              title,
            )
          ],
        ),
      ),
    );
  }
}

class _CustomRadioButton<T> extends StatelessWidget {
  const _CustomRadioButton({
    Key? key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  }) : super(key: key);

  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        unselectedWidgetColor: Colors.amber,
      ),
      child: Transform.scale(
        scale: 1.25,
        child: Radio(
          visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
            vertical: VisualDensity.minimumDensity,
          ),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
          activeColor: Colors.black,
          splashRadius: 0,
        ),
      ),
    );
  }
}

class _Separator extends StatelessWidget {
  const _Separator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1,
      thickness: 1,
      indent: 20,
      endIndent: 20,
      color: Colors.blue,
    );
  }
}
