import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:vandal/gen/assets.gen.dart';
import 'package:vandal/generated/locale_keys.g.dart';
import 'package:vandal/src/bloc/auth_bloc/auth_bloc.dart';
import 'package:vandal/utils/app_colors.dart';
import 'package:vandal/utils/app_text_styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _phoneController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String fullPhone = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is AuthSendedCode) {
              context.go('/password', extra: state.phone);
            }
          },
          builder: (context, state) {
            return SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: SvgPicture.asset(
                      Assets.images.logo,
                      width: 175.0,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  const SizedBox(height: 60),
                  Text(
                    LocaleKeys.login_with_phone.tr(),
                    style: AppTextStyles.headlines1(height: 36.0 / 24.0),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 40),
                  Text(
                    LocaleKeys.write_phone_number.tr(),
                    style: AppTextStyles.textSmallMed(height: 19.6 / 14.0),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 10),
                  IntlPhoneField(
                    key: _formKey,
                    controller: _phoneController,
                    flagsButtonPadding: const EdgeInsets.all(8),
                    dropdownIconPosition: IconPosition.trailing,
                    cursorColor: AppColors.black,
                    style: AppTextStyles.textLightMed(
                        height: 16.8 / 12.0, color: AppColors.black),
                    dropdownTextStyle: AppTextStyles.textLightMed(
                        height: 16.8 / 12.0, color: AppColors.black),
                    decoration: InputDecoration(
                      labelText:
                          LocaleKeys.write_phone_number_without_code.tr(),
                      labelStyle:
                          AppTextStyles.textLightMed(height: 16.8 / 12.0),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.grey3),
                          borderRadius: BorderRadius.all(Radius.circular(8.0))),
                      disabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.grey3),
                          borderRadius: BorderRadius.all(Radius.circular(8.0))),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.grey3),
                          borderRadius: BorderRadius.all(Radius.circular(8.0))),
                    ),
                    searchText: LocaleKeys.write_country.tr(),
                    invalidNumberMessage:
                        LocaleKeys.incorrect_phone_number.tr(),
                    initialCountryCode: 'UA',
                    onChanged: (phone) {
                      if (phone.completeNumber.length == 13 ||
                          phone.completeNumber.length == 12) {
                        setState(() {
                          fullPhone = phone.completeNumber;
                        });
                      }
                    },
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: Text(
                      LocaleKeys.sent_code.tr(),
                      style: AppTextStyles.textLightMed(height: 16.8 / 12.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0.0),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            _phoneController.text.length == 9
                                ? AppColors.yellow
                                : AppColors.grey),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ))),
                    onPressed: () {
                      if (_phoneController.text.length == 9) {
                        context.read<AuthBloc>().add(
                            AuthSendCodeEvent(phone: fullPhone.substring(1)));
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25),
                      child: Center(
                        child: state is AuthLoading
                            ? const CircularProgressIndicator(
                                color: AppColors.black,
                              )
                            : Text(
                                LocaleKeys.get_code.tr(),
                                style: AppTextStyles.textSmallMed(
                                    height: 19.6 / 14.0,
                                    color: _phoneController.text.length == 9
                                        ? AppColors.black
                                        : AppColors.white),
                              ),
                      ),
                    ),
                  ),
                ],
              ),
            ));
          },
        ),
      ),
    );
  }
}
