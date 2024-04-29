import 'package:app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class Signwith extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.r),
        border: Border.all(
          color: Color(0xffD9D9D9),
          width: 2,
        ),
      ),
      child: Row(
        children: [
          Gap(15.h),
          SvgPicture.asset(
            'assets/icons/icons_google.svg',
            width: 22.w,
            height: 22.h,
            fit: BoxFit.cover,
          ),
          Gap(23.w),
          Text(
            S.of(context).continue_with_Google_account,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
