import 'package:app/generated/l10n.dart';
import 'package:app/src/widget/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ChangeUserNameScreen extends StatelessWidget {
  static const routeName = 'ChangeUserNameScreen';
  const ChangeUserNameScreen({super.key});

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
                S.of(context).Change_Username,
                style: TextStyle(fontSize: 26.sp, fontWeight: FontWeight.bold),
              ),
              Gap(50.h),
              Text(
                '${S.of(context).Current_Username}\nyoustinasalah288',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Gap(55.h),
              Text(
                S.of(context).New_Username,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextFormField(decoration: InputDecoration()),
              Gap(50.h),
              Align(
                alignment: Alignment.center,
                child: CustomButton(
                  onPressed: () {},
                  title: S.of(context).Submit,
                  backgroundColor: Color(0xffE4F3F8),
                  borderSideColor: Colors.black,
                  noBackground: true,
                  textColor: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
