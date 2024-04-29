import 'package:app/generated/l10n.dart';
import 'package:app/src/feature/auth/register/view/confirm_email_screen.dart';
import 'package:app/src/feature/auth/register/view_model/register_view_model.dart';
import 'package:app/src/feature/auth/widget/app_divider.dart';
import 'package:app/src/feature/auth/widget/sgin.dart';
import 'package:app/src/feature/auth/widget/sign_with.dart';
import 'package:app/src/widget/custom_button.dart';
import 'package:app/src/widget/custom_text_fomr_field.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = 'RegisterScreen';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  RegisterViewModel viewModel = RegisterViewModel();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          'assets/images/background_login.svg',
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: ChangeNotifierProvider<RegisterViewModel>(
              create: (context) => viewModel,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 35.w),
                child: SizedBox(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Gap(200.h),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            S.of(context).SIGN_UP,
                            style: TextStyle(
                              fontSize: 32.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Gap(60.h),
                        Text(
                          S.of(context).EMAIL,
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        Form(
                          key: viewModel.formKey,
                          child: CustomTextFormField(
                            controller: viewModel.emailController,
                            hintText: S.of(context).enter_emial,
                            myValidator: (text) {
                              if (text == null || text.isEmpty) {
                                return S.of(context).enter_emial;
                              }
                              return null;
                            },
                          ),
                        ),
                        Gap(80.h),
                        MyDivider(title: S.of(context).or),
                        Gap(15.h),
                        Signwith(),
                        Gap(70.h),
                        CustomButton(
                          onPressed: () {
                            if (viewModel.formKey.currentState!.validate()) {
                              Navigator.of(context)
                                  .pushNamed(ConFirmEmailScreen.routeName);
                            }
                          },
                          title: S.of(context).SIGN_UP,
                          textColor: Colors.black,
                          borderSideColor: Color(0xffD9D9D9),
                        ),
                        Gap(70.h),
                        Sign(
                          title1: S.of(context).ALREADY_HAVE_AN_ACCOUNT_YET,
                          title2: S.of(context).LOGIN,
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
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
