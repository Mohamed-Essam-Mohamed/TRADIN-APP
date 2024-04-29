// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class StockWidget extends StatelessWidget {
  int index;
  String title;
  StockWidget({
    Key? key,
    required this.index,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290.w,
      decoration: BoxDecoration(
        color: index % 2 == 0 ? Color(0xffAAD6EB) : Color(0xffB0B4BD),
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
