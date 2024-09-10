// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ru = {
  "login_with_phone": "Вход по телефону",
  "write_phone_number": "Укажите номер телефона",
  "write_phone_number_without_code": "Укажите номер согласно коду страны",
  "write_country": "Введите страну",
  "incorrect_phone_number": "Неверный номер телефона",
  "sent_code": "Вам будет отправлен код подтверждения",
  "get_code": "Получить код подтверждения",
  "code_send_by_number": "Код подтверждения отправлен по номеру",
  "write_code_from_SMS": "Введите код подтверждения с Viber/SMS, отправленный на указанный номер.",
  "resend_code_after": "Повторно отправить код через",
  "resend_code": "Не поступает код?\nОтправить повторно",
  "check_code": "Подтвердить код регистрации",
  "successful_code": "Поздравляем!\nВаша регистрация успешно завершена.",
  "personal_info": "Личная информация",
  "avatar": "Аватарка",
  "our_contacts": "Наши контакты",
  "repeat_order": "Повторить заказ",
  "settings": "Настройки",
  "language": "Язык интерфейса",
  "my_orders": "Мои заказы",
  "waiting_list": "Список ожидания",
  "my_reviews": "Мои отзывы",
  "my_questions": "Мои вопросы",
  "logaut": "Выход из аккаунта"
};
static const Map<String,dynamic> uk = {
  "login_with_phone": "Вхід за номером телефону",
  "write_phone_number": "Вкажіть номер телефону",
  "write_phone_number_without_code": "Вкажіть номер згідно коду країни",
  "write_country": "Введіть країну",
  "incorrect_phone_number": "Неправильний номер телефону",
  "sent_code": "Вам буде відправлено код підтвердження",
  "get_code": "Отримати код підтвердження",
  "code_send_by_number": "Код підтвердження надіслано за номером",
  "write_code_from_SMS": "Введіть код підтвердження з Viber/SMS, надісланий на вказаний номер.",
  "resend_code_after": "Повторно надіслати код через",
  "resend_code": "Не надходить код?\nНадіслати повторно",
  "check_code": "Підтвердити код реєстрації",
  "successful_code": "Вітаємо! \n Ваша реєстрація успішно завершена.",
  "personal_info": "Особиста інформація",
  "avatar": "Аватарка",
  "our_contacts": "Наші контакти",
  "repeat_order": "Повторити замовлення",
  "settings": "Налаштування",
  "language": "Мова інтерфейсу",
  "my_orders": "Мої замовлення",
  "waiting_list": "Лист очікування",
  "my_reviews": "Мої відгуки",
  "my_questions": "Мої питання",
  "logaut": "Вихід з аккаунту"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ru": ru, "uk": uk};
}
