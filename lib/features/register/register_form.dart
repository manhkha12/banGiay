import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/features/localization/localizations.dart';
import 'package:smart_home/features/register/cubit/signup_cubit.dart';
import 'package:smart_home/features/register/cubit/signup_state.dart';
import 'package:smart_home/gen/assets.gen.dart';
import 'package:smart_home/routes.dart';
import 'package:smart_home/shared/extensions/build_context_extension.dart';
import 'package:smart_home/shared/utils/validate_form.dart';
import 'package:smart_home/shared/widgets/app_field_header.dart';
import 'package:smart_home/shared/widgets/app_text_form_field.dart';
import 'package:smart_home/shared/widgets/buttons/app_button.dart';
import 'package:smart_home/shared/widgets/simple_toastification.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final GlobalKey _formKey = GlobalKey<FormState>();
  final ValueNotifier<bool> _passwordVisibleNotifier = ValueNotifier(false);
  late final SignupCubit signupCubit;
  bool isChecked = false;

  @override
  void initState() {
    signupCubit = context.read<SignupCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        autovalidateMode: AutovalidateMode.disabled,
        key: _formKey,
        child: BlocListener<SignupCubit, SignupState>(
            listener: (context, state) {
              state.error?.whenOrNull(
                data: (error, _) => showErrorToast(error),
              );
              if (state.isSignupSuccess) {
                showSuccessToast('register.register_success'.tr());

                Navigator.of(context).pushReplacementNamed(RouteName.login);
              }
            },
            child: Column(
              children: [
                Divider(
                  height: 1,
                  color: context.colors.divider,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 4,
                      ),
                      AppFieldHeader(
                        text: 'register.email'.tr(),
                        isRequired: true,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      AppTextFormField(
                        hintText: 'register.input_email'.tr(),
                        validator: (value) {
                          return Validation.validateEmail(value!);
                        },
                        onChanged: (value) => signupCubit.setEmail(value),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      AppFieldHeader(
                        text: 'register.password'.tr(),
                        isRequired: true,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      ValueListenableBuilder<bool>(
                          valueListenable: _passwordVisibleNotifier,
                          builder: (context, isOn, _) {
                            return AppTextFormField(
                              hintText: 'register.input_password'.tr(),
                              onChanged: (value) =>
                                  signupCubit.setPassword(value),
                              obscured: !isOn,
                              suffixIcon: GestureDetector(
                                behavior: HitTestBehavior.translucent,
                                onTap: () {
                                  _passwordVisibleNotifier.value = !isOn;
                                },
                                child: ConstrainedBox(
                                  constraints: const BoxConstraints(
                                      maxWidth: 34, maxHeight: 34),
                                  child: Center(
                                    child: (!isOn
                                            ? Assets.icons.eyeOff
                                            : Assets.icons.eyeOn)
                                        .svg(
                                      width: 18,
                                      color: context.colors.placeholderColor,
                                    ),
                                  ),
                                ),
                              ),
                              validator: (value) {
                                return Validation.validatePass(value);
                              },
                            );
                          }),
                      const SizedBox(
                        height: 16,
                      ),
                      AppFieldHeader(
                        text: 'register.name_express'.tr(),
                        isRequired: true,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      AppTextFormField(
                        hintText: 'register.input_name'.tr(),
                        validator: (value) {
                          return Validation.validateUserName(value);
                        },
                        onChanged: (value) => signupCubit.setUsername(value),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      AppFieldHeader(
                        text: 'ten day du',
                        isRequired: true,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      AppTextFormField(
                        hintText: 'full name',
                        onChanged: (value) => signupCubit.setFullName(value),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      activeColor: context.colors.onlineColor,
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(color: context.colors.black),
                          children: [
                            TextSpan(text: 'register.confirm_rule.title'.tr()),
                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: InkWell(
                                onTap: () {},
                                child: Text(
                                  'register.confirm_rule.term'.tr(),
                                  style: TextStyle(
                                    color: context.colors.blue,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),
                            TextSpan(text: 'register.confirm_rule.and'.tr()),
                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: InkWell(
                                onTap: () {},
                                child: Text(
                                  'register.confirm_rule.policy'.tr(),
                                  style: TextStyle(
                                    color: context.colors.blue,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),
                            TextSpan(text: 'register.confirm_rule.check'.tr()),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 75,
                ),
                BlocBuilder<SignupCubit, SignupState>(
                    builder: (context, state) {
                  final isValid = state.isValid;
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: AppButton(
                      label: 'register.title'.tr(),
                      onPressed: isValid && isChecked
                          ? () {
                              var valid = (_formKey.currentState as FormState)
                                  .validate();
                              if (valid) {
                                signupCubit.register();
                              }
                            }
                          : null,
                    ),
                  );
                }),
              ],
            )));
  }
}
