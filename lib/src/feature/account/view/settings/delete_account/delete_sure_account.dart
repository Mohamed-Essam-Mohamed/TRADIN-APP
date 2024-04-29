import 'package:app/generated/l10n.dart';
import 'package:app/src/feature/account/view/settings/delete_account/delete_account_screen.dart';
import 'package:app/src/widget/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class DeleteSureAccountScreen extends StatelessWidget {
  static const routeName = 'DeleteSureAccountScreen';
  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)!.settings.arguments as ContantListitme;
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
            children: [
              Text(
                S.of(context).Delete_Account,
                style: TextStyle(fontSize: 26.sp, fontWeight: FontWeight.bold),
              ),
              Text(
                S.of(context).Can_you_tell_us_why_you_want_to_leave,
                style: TextStyle(fontSize: 20.sp),
              ),
              Gap(20.h),
              TextFormField(
                controller: TextEditingController(text: arg.title),
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.keyboard_arrow_down,
                    size: 40.sp,
                  ),
                  enabledBorder: UnderlineInputBorder(),
                ),
              ),
              Gap(70.h),
              Container(
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
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        S
                            .of(context)
                            .Account_Reactivation_is_possible_within_30_Days,
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.w300),
                      ),
                    ),
                  ],
                ),
              ),
              Gap(190.h),
              CustomButton(
                onPressed: () {},
                title: S.of(context).Delete_Account,
                noBackground: true,
                textColor: Colors.black,
                backgroundColor: Color(0xffEFA9B6),
              ),
              Gap(40.h),
              CustomButton(
                onPressed: () {},
                title: S.of(context).Keep_account,
                textColor: Colors.black,
                borderSideColor: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
