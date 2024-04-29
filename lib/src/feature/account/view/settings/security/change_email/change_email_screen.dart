import 'package:app/generated/l10n.dart';
import 'package:app/src/feature/account/view/settings/security/change_email/send_code_confirm_screen.dart';
import 'package:app/src/widget/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ChangeEmailScreen extends StatelessWidget {
  static const routeName = 'ChangeEmailScreen';
  const ChangeEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).Change_Email,
                style: TextStyle(fontSize: 26.sp, fontWeight: FontWeight.bold),
              ),
              Gap(50.h),
              Text(
                '${S.of(context).Current_Email}\nDianasoliman266@gmail.com',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Gap(55.h),
              Text(
                S.of(context).New_Email,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'user@gail.com',
                  hintStyle: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.grey,
                  ),
                ),
              ),
              Gap(45.h),
              Container(
                // width: 450.w,
                // height: 120.h,
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
                decoration: BoxDecoration(
                  color: Color(0xffE4F3F8),
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade700,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 5), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.of(context).Note_That,
                      style: TextStyle(
                          fontSize: 24.sp, fontWeight: FontWeight.bold),
                    ),
                    Gap(3.h),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        // '. after changing your email , you wii be logged out and can only login with the new email and any future communication will be sent to your new email . ',
                        S
                            .of(context)
                            .after_changing_you_email_and_any_futur_communication_will_be_sent_to_your_new_email,
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.w300),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Divider(
                      color: Color(0xff98DEF4),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        // '. a. in case you entered a new email that links to an unverified account ,  the other account wii be deleted . ',
                        S.of(context).in_case_ou_entered_new_email,
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.w300),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ),
              Gap(50.h),
              Align(
                alignment: Alignment.center,
                child: CustomButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(SendConFirmScreen.routeName);
                  },
                  title: S.of(context).Send_Verification_Code,
                  backgroundColor: Color(0xffE4F3F8),
                  textColor: Colors.black,
                  borderSideColor: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
