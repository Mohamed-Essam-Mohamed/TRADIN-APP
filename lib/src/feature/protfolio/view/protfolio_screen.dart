import 'package:app/generated/l10n.dart';
import 'package:app/src/feature/protfolio/view/widget/stock_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class ProtFolioScreen extends StatelessWidget {
  const ProtFolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          'assets/images/BG.svg',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.of(context).my_portfolio,
                      style: TextStyle(
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    Text(
                      '9 April, 2024',
                      style: TextStyle(color: Colors.white),
                    ),
                    Gap(30.h),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 240.h,
                        width: 350.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(36.r),
                          color: Color(0xffDBC089),
                        ),
                        child: Column(
                          children: [
                            Text(
                              S.of(context).my_investment,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 32.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Gap(15.h),
                    Text(
                      S.of(context).your_stocks,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32.sp,
                      ),
                    ),
                    Gap(10.h),
                    SizedBox(
                      height: 200.h,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => StockWidget(
                          title: '',
                          index: index,
                        ),
                        itemCount: 10,
                        separatorBuilder: (context, index) => Gap(20.h),
                      ),
                    ),
                    Gap(15.h),
                    Text(
                      S.of(context).recent_activities,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32.sp,
                      ),
                    ),
                    SizedBox(
                      height: 130.h,
                      width: 75,
                      child: ListView.separated(
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) => Container(
                          width: 75.w,
                          height: 67.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: index % 2 == 0
                                ? Color(0xffAAD6EB)
                                : Color(0xffF0E2C7),
                          ),
                          child: index % 2 == 0
                              ? SvgPicture.asset('assets/icons/graph-up.svg')
                              : SvgPicture.asset('assets/icons/graph-down.svg'),
                          alignment: Alignment.center,
                        ),
                        separatorBuilder: (context, index) => Gap(5.h),
                        itemCount: 6,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
