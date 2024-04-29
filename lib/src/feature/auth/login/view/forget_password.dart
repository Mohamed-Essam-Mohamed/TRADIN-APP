import 'package:app/generated/l10n.dart';
import 'package:app/src/feature/auth/login/view/confirm_forget_emial_screen.dart';
import 'package:app/src/feature/auth/login/view_model/login_view_model.dart';

import 'package:app/src/widget/custom_button.dart';
import 'package:app/src/widget/custom_text_fomr_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class ForGetPassword extends StatefulWidget {
  static const String routeName = 'ForGetPassword';

  @override
  State<ForGetPassword> createState() => _ForGetPasswordState();
}

class _ForGetPasswordState extends State<ForGetPassword> {
  LoginViewModel viewModel = LoginViewModel();

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
        Form(
          key: viewModel.formKey,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 35.w),
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Gap(200.h),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            S.of(context).forget_password,
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
                        Gap(100.h),
                        CustomButton(
                          onPressed: () {
                            if (viewModel.formKey.currentState!.validate()) {
                              Navigator.of(context).pushNamed(
                                  ConFirmForgetEmialScreen.routeName);
                            }
                          },
                          title: S.of(context).CONTINUE,
                          textColor: Colors.black,
                          borderSideColor: Color(0xffD9D9D9),
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
