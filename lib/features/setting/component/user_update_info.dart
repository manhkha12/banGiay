import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoe_store/features/localization/translate_extension.dart';
import 'package:shoe_store/gen/assets.gen.dart';

import 'package:shoe_store/shared/cubits/app_cubit/app_cubit.dart';
import 'package:shoe_store/shared/enum/gender_type.dart';

import 'package:shoe_store/shared/extensions/build_context_extension.dart';
import 'package:shoe_store/shared/widgets/app_text.dart';
import 'package:shoe_store/shared/widgets/app_text_form_field.dart';
import 'package:shoe_store/shared/widgets/custom_app_bar.dart';
import 'package:shoe_store/shared/widgets/custom_dropdowm_button.dart';


class UserUpdateInfo extends StatefulWidget {
  const UserUpdateInfo({super.key});

  @override
  State<UserUpdateInfo> createState() => _UserUpdateInfoState();
}

class _UserUpdateInfoState extends State<UserUpdateInfo> {
  GenderType? _selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'settings.profile'.tr(),
        titleFontSize: 20,
        titleFontWeight: FontWeight.bold,
      ),
      body: BlocBuilder<AppCubit, AppState>(builder: (_, state) {
        return state.when(
            checking: () => const Center(
                  child: CircularProgressIndicator(),
                ),
            unAuthorized: () => const Center(
                  child: AppText(
                    'Vui lòng đăng nhập',
                    fontSize: 20,
                  ),
                ),
            authorized: (user) => SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          "About",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: context.width,
                          decoration: BoxDecoration(
                            color: context.colors.dimGrey,
                            border: Border.all(
                                color: context.colors.placeholderColor
                                    .withOpacity(0.3)),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText(
                                  "Tên",
                                  fontSize: 18,
                                  color: context.colors.black,
                                ),
                                SizedBox(height: 5),
                                AppTextFormField(
                                  hintText: user.userName,
                                  textStyle:
                                      TextStyle(color: context.colors.black),
                                  fillColor: context.colors.ligthGrey,
                                ),
                                SizedBox(height: 10),
                                AppText("Giới tính",
                                    fontSize: 18, color: context.colors.black),
                                SizedBox(height: 5),
                                CustomDropdown(
                                  items: GenderType.values,
                                  hint: 'Chọn giới tính',
                                  icon: Transform.scale(
                                    scale: 1.3,
                                    child: Assets.icons.arrowDown.svg(
                                        color: context.colors.placeholderColor),
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      _selectedGender = value;
                                    });
                                  },
                                ),
                                SizedBox(height: 10),
                                AppText('Ngay sinh',
                                    fontSize: 18, color: context.colors.black),
                                SizedBox(height: 5),
                                AppTextFormField(
                                  hintText: 'Nhập ngày sinh',
                                  textStyle:
                                      TextStyle(color: context.colors.black),
                                  fillColor: context.colors.ligthGrey,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        AppText(
                          "Lien he",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: context.width,
                          decoration: BoxDecoration(
                            color: context.colors.dimGrey,
                            border: Border.all(
                                color: context.colors.placeholderColor
                                    .withOpacity(0.3)),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText("Email",
                                    fontSize: 18, color: context.colors.black),
                                SizedBox(height: 5),
                                AppTextFormField(
                                  hintText: user.email,
                                  textStyle:
                                      TextStyle(color: context.colors.black),
                                  fillColor: context.colors.ligthGrey,
                                ),
                                SizedBox(height: 10),
                                AppText("So dien thoai",
                                    fontSize: 18, color: context.colors.black),
                                SizedBox(height: 5),
                                AppTextFormField(
                                  hintText: "Nhập số điện thoại",
                                  textStyle:
                                      TextStyle(color: context.colors.black),
                                  fillColor: context.colors.ligthGrey,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ));
      }),
    );
  }
}
