// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ContainerHomeScreenBast extends StatelessWidget {
  int index;
  String title;
  ContainerHomeScreenBast({
    Key? key,
    required this.index,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      width: 290.w,
      decoration: BoxDecoration(
        color: index % 2 == 0 ? Color(0xffB3B3B3) : Color(0xffCB9F49),
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Column(
        children: [
          Gap(20.h),
          Text(
            title,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
