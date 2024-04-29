import 'package:app/generated/l10n.dart';
import 'package:app/src/feature/auth/register/view/widget/textform_details_user_screen.dart';
import 'package:app/src/feature/auth/register/view_model/register_view_model.dart';
import 'package:app/src/feature/init_home/view/init_home_screen.dart';
import 'package:app/src/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class InformationUser extends StatefulWidget {
  static const String routeName = "InformationUser";

  @override
  State<InformationUser> createState() => _InformationUserState();
}

class _InformationUserState extends State<InformationUser> {
  RegisterViewModel viewModel = RegisterViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ChangeNotifierProvider<RegisterViewModel>(
        create: (context) => viewModel,
        child: SingleChildScrollView(
          child: Form(
            key: viewModel.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Gap(MediaQuery.of(context).size.height * 0.22),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.78,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(65.r),
                      topRight: Radius.circular(65.r),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Gap(70.h),
                      TextFormDetailsScreen(
                        controller: viewModel.nationalityController,
                        title: S.of(context).where_are_you_from_nationality,
                        validator: (text) {
                          if (text == null || text.isEmpty) {
                            return S.of(context).please_enter_your_nationality;
                          }
                          return null;
                        },
                      ),
                      Gap(40.h),
                      TextFormDetailsScreen(
                        controller: TextEditingController(
                            text:
                                "${viewModel.dateTime.year}/${viewModel.dateTime.month}/${viewModel.dateTime.day}"),
                        title: S.of(context).birthday_date,
                        isSuffixIcon: true,
                        validator: (text) {
                          if (text == null || text.isEmpty) {
                            return S
                                .of(context)
                                .please_enter_your_birthday_date;
                          }
                          return null;
                        },
                      ),
                      Gap(40.h),
                      TextFormDetailsScreen(
                        controller: viewModel.phoneController,
                        title: S.of(context).phone_number,
                        validator: (text) {
                          if (text == null || text.isEmpty) {
                            return S.of(context).please_enter_your_phone_number;
                          }
                          return null;
                        },
                      ),
                      Gap(40.h),
                      TextFormDetailsScreen(
                        controller: viewModel.nationalIDController,
                        title: S.of(context).national_ID,
                        validator: (text) {
                          if (text == null || text.isEmpty) {
                            return S.of(context).please_enter_your_national_ID;
                          }
                          return null;
                        },
                      ),
                      Gap(MediaQuery.of(context).size.height * 0.1),
                      CustomButton(
                        onPressed: () {
                          if (viewModel.formKey.currentState!.validate()) {
                            Navigator.of(context)
                                .pushNamed(InitHomeScreen.routeName);
                          }
                        },
                        title: S.of(context).CONTINUE,
                        textColor: Colors.black,
                        borderSideColor: Color(0xffD9D9D9),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
