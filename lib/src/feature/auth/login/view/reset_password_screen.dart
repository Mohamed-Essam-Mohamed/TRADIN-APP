import 'package:app/generated/l10n.dart';
import 'package:app/src/feature/auth/login/view_model/login_view_model.dart';
import 'package:app/src/feature/init_home/view/init_home_screen.dart';
import 'package:app/src/widget/custom_button.dart';
import 'package:app/src/widget/custom_text_fomr_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class ResetPsswordScreen extends StatefulWidget {
  static const String routeName = 'ResetPsswordScreen';

  @override
  State<ResetPsswordScreen> createState() => _ResetPsswordScreenState();
}

class _ResetPsswordScreenState extends State<ResetPsswordScreen> {
  LoginViewModel viewModel = LoginViewModel();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LoginViewModel>(
      create: (context) => viewModel,
      child: Scaffold(
          body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
                child: Form(
                  key: viewModel.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Gap(16.h),
                      Text(
                        S.of(context).RESET_YOUR_PASSWORD,
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Gap(60.h),
                      Text(
                        S.of(context).CREATE_NEW_PASSWORD,
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      CustomTextFormField(
                        hintText: S.of(context).CONFIRM_THE_PASSWORD,
                        controller: viewModel.passwordController,
                        myValidator: (text) {
                          if (text == null || text.isEmpty) {
                            return S.of(context).please_enter_password;
                          }
                          return null;
                        },
                        isPassword: true,
                        obscureText: true,
                      ),
                      Gap(40.h),
                      Text(
                        S.of(context).CONFIRM_THE_PASSWORD,
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      CustomTextFormField(
                        hintText: S.of(context).CONFIRM_THE_PASSWORD,
                        controller: viewModel.confirmPasswordController,
                        myValidator: (text) {
                          if (text == null || text.isEmpty) {
                            return S.of(context).please_enter_password;
                          }
                          if (text != viewModel.passwordController.text) {
                            return S.of(context).password_not_match;
                          }
                          return null;
                        },
                        isPassword: true,
                        obscureText: true,
                      ),
                      Gap(MediaQuery.of(context).size.height * 0.18),
                      CustomButton(
                        onPressed: () {
                          if (viewModel.formKey.currentState!.validate()) {
                            Navigator.of(context)
                                .pushNamed(InitHomeScreen.routeName);
                          } else {
                            setState(() {});
                          }
                        },
                        title: S.of(context).Confirm,
                        textColor: Colors.black,
                        borderSideColor: Color(0xffD9D9D9),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
    ;
  }
}
