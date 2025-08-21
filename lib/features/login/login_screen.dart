import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/features/localization/localizations.dart';
import 'package:smart_home/features/login/component/login_cubit.dart';
import 'package:smart_home/features/login/component/login_state.dart';
import 'package:smart_home/gen/assets.gen.dart';
import 'package:smart_home/routes.dart';
import 'package:smart_home/shared/extensions/build_context_extension.dart';
import 'package:smart_home/shared/utils/validate_form.dart';
import 'package:smart_home/shared/widgets/app_text.dart';
import 'package:smart_home/shared/widgets/app_text_form_field.dart';
import 'package:smart_home/shared/widgets/buttons/app_button.dart';
import 'package:smart_home/shared/widgets/keyboard_avoider.dart';
import 'package:smart_home/shared/widgets/simple_toastification.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final LoginCubit loginCubit;
  final GlobalKey _formKey = GlobalKey<FormState>();
  final ValueNotifier<bool> _passwordVisibleNotifier = ValueNotifier(false);

  @override
  void initState() {
    loginCubit = context.read<LoginCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: BlocListener<LoginCubit, LoginState>(
          listener: (_, state) {
            state.error?.whenOrNull(
              data: (error, _) => showErrorToast(error),
            );
            if (state.isLoginSuccess) {
              Navigator.of(context).pushReplacementNamed(RouteName.main);
            }
          },
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: KeyboardAvoider(
                autoScroll: true,
                child: Column(
                  children: [
                    const SizedBox(height: 100),
                    AppText(
                      'login.title'.tr(),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: context.colors.primaryColor,
                    ),
                    const SizedBox(height: 40),
                    AppTextFormField(
                      hintText: 'login.email'.tr(),
                      validator: (value) {
                        return Validation.validateEmail(value);
                      },
                      onChanged: (value) => loginCubit.setEmail(value),
                    ),
                    const SizedBox(height: 20),
                    ValueListenableBuilder<bool>(
                      valueListenable: _passwordVisibleNotifier,
                      builder: (context, isOn, _) {
                        return AppTextFormField(
                          hintText: 'login.password'.tr(),
                          validator: (value) {
                            return Validation.validatePass(value);
                          },
                          obscured: !isOn,
                          onChanged: (value) => loginCubit.setPassword(value),
                          suffixIcon: GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () {
                              _passwordVisibleNotifier.value = !isOn;
                            },
                            child: ConstrainedBox(
                              constraints: const BoxConstraints(maxWidth: 34, maxHeight: 34),
                              child: Center(
                                child: (!isOn ? Assets.icons.eyeOff : Assets.icons.eyeOn).svg(
                                  width: 18,
                                  color: context.colors.placeholderColor,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerRight,
                      child: AppText(
                        'login.forgot_password'.tr(),
                        textDecoration: TextDecoration.underline,
                      ),
                    ),
                    const SizedBox(height: 40),
                    BlocBuilder<LoginCubit, LoginState>(
                      builder: (context, state) {
                        final isValid = state.isValid;
                        final isLogining = state.isLoginning;
                        return AppButton(
                          label: 'login.title'.tr(),
                          isLoading: isLogining,
                          onPressed: isValid
                              ? () {
                                  var valid = (_formKey.currentState as FormState).validate();
                                  if (valid) {
                                    loginCubit.login();
                                  }
                                }
                              : null,
                        );
                      },
                    ),
                    const SizedBox(height: 30),
                    RichText(
                      text: TextSpan(
                        text: 'login.dont_have_account'.tr(),
                        style: TextStyle(
                          fontSize: 15,
                          color: context.colors.black,
                        ),
                        children: [
                          const WidgetSpan(
                            child: SizedBox(width: 3),
                          ),
                          WidgetSpan(
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed(RouteName.register);
                              },
                              child: AppText(
                                'login.register'.tr(),
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 15,
                                  color: context.colors.primaryColor,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
