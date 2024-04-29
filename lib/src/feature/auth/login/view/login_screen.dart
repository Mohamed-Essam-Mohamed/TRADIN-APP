import 'package:app/generated/l10n.dart';
import 'package:app/src/feature/auth/login/view/forget_password.dart';
import 'package:app/src/feature/auth/login/view_model/login_view_model.dart';
import 'package:app/src/feature/auth/register/view/register_screen.dart';
import 'package:app/src/feature/auth/widget/app_divider.dart';
import 'package:app/src/feature/auth/widget/sgin.dart';
import 'package:app/src/feature/auth/widget/sign_with.dart';
import 'package:app/src/feature/init_home/view/init_home_screen.dart';
import 'package:app/src/widget/custom_button.dart';
import 'package:app/src/widget/custom_text_fomr_field.dart';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = 'LoginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginViewModel viewModel = LoginViewModel();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          'assets/images/background_login.svg',
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        ChangeNotifierProvider<LoginViewModel>(
          create: (context) => viewModel,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 35.w),
                child: SizedBox(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Form(
                      key: viewModel.formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Gap(200.h),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              S.of(context).LOGIN,
                              style: TextStyle(
                                fontSize: 32.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Gap(25.h),
                          Text(
                            S.of(context).EMAIL,
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          CustomTextFormField(
                            controller: viewModel.emailController,
                            myValidator: (text) {
                              if (text == null || text.isEmpty) {
                                return S.of(context).enter_emial;
                              }
                              return null;
                            },
                            hintText: S.of(context).enter_emial,
                          ),
                          Gap(25.h),
                          Text(
                            S.of(context).PASSWORD,
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          CustomTextFormField(
                            controller: viewModel.passwordController,
                            hintText: S.of(context).enter_your_password,
                            isPassword: true,
                            obscureText: true,
                            myValidator: (Text) {
                              if (Text == null || Text.isEmpty) {
                                return S.of(context).enter_your_password;
                              }
                              return null;
                            },
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: TextButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed(ForGetPassword.routeName);
                              },
                              child: Text(
                                S.of(context).forget_password,
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ),
                          Gap(5.h),
                          MyDivider(title: S.of(context).or),
                          Gap(15.h),
                          Signwith(),
                          Gap(60.h),
                          CustomButton(
                            onPressed: () {
                              if (viewModel.formKey.currentState!.validate()) {
                                Navigator.of(context)
                                    .pushNamed(InitHomeScreen.routeName);
                              }
                            },
                            title: S.of(context).LOGIN,
                            textColor: Colors.black,
                            borderSideColor: Color(0xffD9D9D9),
                          ),
                          Gap(30.h),
                          Sign(
                            title1: S.of(context).YOU_DONT_HAVE_AN_ACCOUNT,
                            title2: S.of(context).SIGN_UP,
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(RegisterScreen.routeName);
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
