import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoe_store/features/localization/translate_extension.dart';
import 'package:shoe_store/features/login/cubit/login_cubit.dart';
import 'package:shoe_store/features/login/cubit/login_state.dart';
import 'package:shoe_store/gen/assets.gen.dart';
import 'package:shoe_store/routes.dart';
import 'package:shoe_store/shared/extensions/extensions.dart';
import 'package:shoe_store/shared/utils/validate_form.dart';
import 'package:shoe_store/shared/widgets/app_text.dart';
import 'package:shoe_store/shared/widgets/app_text_form_field.dart';
import 'package:shoe_store/shared/widgets/buttons/app_button.dart';
import 'package:shoe_store/shared/widgets/simple_toastification.dart';




class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
    late final LoginCubit loginCubit;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final ValueNotifier<bool> _passwordVisibleNotifier = ValueNotifier(false);

    @override
  void initState() {
    loginCubit = context.read<LoginCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit,LoginState>(
      listener: (_, state) {
            state.error?.whenOrNull(
              data: (error, _) => showErrorToast(error),
            );
            if (state.isLoginSuccess) {
              Navigator.of(context).pushReplacementNamed(RouteName.main);
            }
          },
      child:
       Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                width: context.width,
                height: 200,
                decoration: BoxDecoration(
                    color: context.colors.disabledInputBorder,
                    borderRadius: BorderRadius.circular(20)),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          'login.input_email'.tr(),
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
                          onChanged: (value) => loginCubit.setEmail(value),
                          fillColor: context.colors.ligthGrey,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        AppText(
                          'login.input_password'.tr(),
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          height: 6,
                        ),
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
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: AppText(
                  'login.fogot_pass'.tr(),
                  color: context.colors.black,
                  textDecoration: TextDecoration.underline,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              
                 BlocBuilder<LoginCubit, LoginState>(
                  builder: (context, state) {
                    final isValid = state.isValid;
                        final isLogining = state.isLoginning;
                    return AppButton(
                      isLoading: isLogining,
                      onPressed: isValid
                      
                          ? () async {
                              var valid = _formKey.currentState!.validate();
                              if (valid) {
                                loginCubit.login();
                              }
                            }
                          : null,
                      label:'login.title'.tr(),
                      textStyle: const TextStyle(fontSize: 18, color: Colors.black),
                      primaryColor: context.colors.onlineColor,
                    );
                  },
                ),
              
            ],
          ),
        )
      
    );
  }
}
