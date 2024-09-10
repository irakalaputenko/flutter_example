import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
import 'package:vandal/gen/assets.gen.dart';
import 'package:vandal/generated/locale_keys.g.dart';
import 'package:vandal/src/bloc/auth_bloc/auth_bloc.dart';
import 'package:vandal/utils/app_colors.dart';
import 'package:vandal/utils/app_text_styles.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({required this.phoneNumber, super.key});
  final String phoneNumber;

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  final _pinController = TextEditingController();

  final focusNode = FocusNode();

  final formKey = GlobalKey<FormState>();

  bool _resendEmail = true;

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 72,
      height: 72,
      textStyle: AppTextStyles.headlines3(height: 22.4 / 16.0),
      decoration: BoxDecoration(
        color: AppColors.bg,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.grey2),
      ),
    );

    return Scaffold(
      backgroundColor: AppColors.white,
      resizeToAvoidBottomInset: false,
      body: BlocConsumer<AuthBloc, AuthState>(listener: (context, state) {
        if (state is AuthLoaded) {
          context.go('/success-login');
        }
      }, builder: (context, state) {
        return GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    IconButton(
                      onPressed: () {
                        context.pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: AppColors.black,
                      ),
                    ),
                    Center(
                      child: SvgPicture.asset(
                        Assets.images.logo,
                        width: 175.0,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 60),
                Text(
                  '${LocaleKeys.code_send_by_number.tr()} +${widget.phoneNumber}',
                  style: AppTextStyles.headlines3(height: 22.4 / 16.0),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Text(
                  LocaleKeys.write_code_from_SMS.tr(),
                  style: AppTextStyles.textSmallMed(
                      height: 19.6 / 14.0, color: AppColors.grey),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                Form(
                  key: formKey,
                  child: Directionality(
                    textDirection: TextDirection.ltr,
                    child: Pinput(
                      controller: _pinController,
                      focusNode: focusNode,
                      androidSmsAutofillMethod:
                          AndroidSmsAutofillMethod.smsUserConsentApi,
                      listenForMultipleSmsOnAndroid: true,
                      defaultPinTheme: defaultPinTheme,
                      separatorBuilder: (index) => const SizedBox(width: 14),
                      hapticFeedbackType: HapticFeedbackType.lightImpact,
                      onChanged: (value) {
                        setState(() {});
                      },
                      showCursor: false,
                      focusedPinTheme: defaultPinTheme.copyWith(
                        decoration: defaultPinTheme.decoration!.copyWith(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: AppColors.yellow),
                        ),
                      ),
                      submittedPinTheme: defaultPinTheme.copyWith(
                        decoration: defaultPinTheme.decoration!.copyWith(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: AppColors.yellow),
                        ),
                      ),
                      errorPinTheme: defaultPinTheme.copyBorderWith(
                        border: Border.all(color: Colors.redAccent),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: _resendEmail
                      ? TweenAnimationBuilder<Duration>(
                          duration: const Duration(minutes: 1),
                          tween: Tween(
                              begin: const Duration(minutes: 1),
                              end: Duration.zero),
                          onEnd: () {
                            _resendEmail = !_resendEmail;
                            setState(() {});
                          },
                          builder: (BuildContext context, Duration value,
                              Widget? child) {
                            final seconds = value.inSeconds;
                            return Text(
                              '${LocaleKeys.resend_code_after.tr()} $seconds сек.',
                              // '0$minutes:${seconds > 60 ? (seconds - (60 * minutes - 1) < 10 ? '0' : '') : (seconds < 10 ? '0' : '')}${seconds > 60 ? seconds - (60 * minutes - 1) : seconds} ',
                              style: AppTextStyles.textLightMed(
                                height: 16.8 / 12.0,
                              ),
                            );
                          },
                        )
                      : GestureDetector(
                          onTap: () {
                            context.read<AuthBloc>().add(
                                AuthSendCodeEvent(phone: widget.phoneNumber));
                            _resendEmail = !_resendEmail;
                            setState(() {});
                          },
                          child: Text(
                            LocaleKeys.resend_code.tr(),
                            style: AppTextStyles.textLightMed(
                              color: AppColors.yellow,
                              height: 20.0 / 16.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                ),
                const Spacer(),
                ElevatedButton(
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0.0),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          _pinController.text.length == 4
                              ? AppColors.yellow
                              : AppColors.grey),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ))),
                  onPressed: () {
                    if (_pinController.text.length == 4) {
                      focusNode.unfocus();
                      context.read<AuthBloc>().add(AuthLoginEvent(
                          phone: widget.phoneNumber,
                          code: _pinController.text));
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
                              LocaleKeys.check_code.tr(),
                              style: AppTextStyles.textSmallMed(
                                  height: 19.6 / 14.0,
                                  color: _pinController.text.length == 4
                                      ? AppColors.black
                                      : AppColors.white),
                            ),
                    ),
                  ),
                ),
              ],
            ),
          )),
        );
      }),
    );
  }
}
