import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoe_store/features/localization/translate_extension.dart';
import 'package:shoe_store/features/register/cubit/signup_cubit.dart';
import 'package:shoe_store/features/register/cubit/signup_state.dart';
import 'package:shoe_store/gen/assets.gen.dart';

import 'package:shoe_store/routes.dart';

import 'package:shoe_store/shared/extensions/build_context_extension.dart';
import 'package:shoe_store/shared/utils/validate_form.dart';
import 'package:shoe_store/shared/widgets/app_text.dart';
import 'package:shoe_store/shared/widgets/app_text_form_field.dart';
import 'package:shoe_store/shared/widgets/buttons/app_button.dart';
import 'package:shoe_store/shared/widgets/simple_toastification.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();

  final ValueNotifier<bool> _passwordVisibleNotifier = ValueNotifier(false);
  late final SignupCubit signupCubit;


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
        child: 
        BlocListener<SignupCubit, SignupState>(
            listener: (context, state) {
              state.error?.whenOrNull(
                data: (error, _) => showErrorToast(error),
              );
              if (state.isSignupSuccess) {
                showSuccessToast('register.register_success'.tr());

                Navigator.of(context).pushReplacementNamed(RouteName.login);
              }
            },child:
        
        Column(
          children: [
            Container(
              width: context.width,
              height: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: context.colors.disabledInputBorder,
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        'signup.email'.tr(),
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      AppTextFormField(
                        autovalidateMode: AutovalidateMode.disabled,
                        validator: (value) {
                          return Validation.validateEmail(value);
                        },
                        onChanged: (value) => signupCubit.setEmail(value),
                        fillColor: context.colors.ligthGrey,
                        hintText: 'login.input_email'.tr(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      AppText(
                        'signup.name_express'.tr(),
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      AppTextFormField(
                        hintText: 'signup.input_name_express'.tr(),
                        autovalidateMode: AutovalidateMode.disabled,
                        validator: (value) {
                          return Validation.validateUserName(value);
                        },
                        onChanged: (value) {
                          context.read<SignupCubit>().setUsername(value);
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      AppText(
                        'signup.password'.tr(),
                        fontSize: 18,
                      ),
                      SizedBox(
                        height: 6,
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
                      SizedBox(
                        height: 10,
                      ),
                      AppText(
                        'signup.re_input_pass'.tr(),
                        fontSize: 18,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      AppTextFormField(
                        hintText: 'signup.re_input_pass'.tr(),
                        validator: (value) {
                          return Validation.validateRePass(
                              value, passwordController.text);
                        },
                        onChanged: (value) {
                          context.read<SignupCubit>().setConfirmPassword(value);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            
            BlocBuilder<SignupCubit, SignupState>(builder: (context, state) {
               final isValid = state.isValid;
              return AppButton(
                label: 'signup.title'.tr(),
                onPressed: isValid
                    ? () {
                        var valid = _formKey.currentState!.validate();
                        if (!valid) {
                          signupCubit.register();
                        }
                      }
                    : null,
                textStyle: const TextStyle(fontSize: 18, color: Colors.black),
                primaryColor: context.colors.onlineColor,
              );
            }),
          ],
        )));
  }
}
