// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app/generated/l10n.dart';
import 'package:app/src/feature/account/view/settings/delete_account/delete_sure_account.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'package:app/src/feature/account/view/widget/select_problem.dart';
import 'package:app/src/utils/app_color.dart';

class DeleteAccountScreen extends StatefulWidget {
  static const String routeName = 'DeleteAccountScreen';

  @override
  State<DeleteAccountScreen> createState() => _DeleteAccountScreenState();
}

class _DeleteAccountScreenState extends State<DeleteAccountScreen> {
  List<String> items = [
    "Transitioning to a different\n investment platform.",
    "Dissatisfaction with application\n performane (speed,bugs,etc)",
    "Limited usage or just\n experimenting with the app",
    "Difficulty finding the desired\n investment product ",
    "Unhappy with existing features\n on the application.",
    "Personal reasons",
  ];

  String selectedRowProblem = 'transitioning';

  String? value;

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
                S.of(context).Delete_Account,
                style: TextStyle(fontSize: 26.sp, fontWeight: FontWeight.bold),
              ),
              Gap(20.h),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        S.of(context).Can_you_tell_us_why_you_want_to_leave,
                        style: TextStyle(fontSize: 20.sp),
                      ),
                      Gap(20.h),
                      TextFormField(
                        decoration: InputDecoration(
                          suffixIcon: InkWell(
                            onTap: () {
                              functionShowModalBottomsheet();
                            },
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              size: 40.sp,
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void functionShowModalBottomsheet() {
    showModalBottomSheet(
      elevation: 0,
      context: context,
      builder: (context) => SingleChildScrollView(
        child: Column(
          children: [
            Gap(20.h),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.20,
                height: 7,
                padding: EdgeInsets.only(
                  top: 10,
                  left: MediaQuery.of(context).size.width * 0.40,
                ),
                decoration: BoxDecoration(
                  color: Color(0xffD9D9D9),
                  borderRadius: BorderRadius.circular(50.r),
                ),
              ),
            ),
            Gap(20.h),
            SelectProblem(
              title: S
                  .of(context)
                  .Transitioning_to_a_different_investment_platform,
              groupValue: 'transitidoning',
              myValue: selectedRowProblem,
              callBack: () {
                Navigator.of(context).pushNamed(
                    DeleteSureAccountScreen.routeName,
                    arguments: ContantListitme(
                        title: S
                            .of(context)
                            .Transitioning_to_a_different_investment_platform));
              },
            ),
            Gap(5.h),
            Divider(
              color: Color(0xffD9D9D9),
            ),
            Gap(5.h),
            SelectProblem(
              title: S.of(context).Dissatisfaction_with_application_performane,
              groupValue: 'dissatisfaction',
              myValue: selectedRowProblem,
              callBack: () {
                Navigator.of(context).pushNamed(
                    DeleteSureAccountScreen.routeName,
                    arguments: ContantListitme(
                        title: S
                            .of(context)
                            .Dissatisfaction_with_application_performane));
              },
            ),
            Gap(5.h),
            Divider(
              color: Color(0xffD9D9D9),
            ),
            Gap(5.h),
            SelectProblem(
              title: S
                  .of(context)
                  .Limited_usage_or_just_experimenting_with_the_app,
              groupValue: 'limitedUsage',
              myValue: selectedRowProblem,
              callBack: () {
                Navigator.of(context)
                    .pushNamed(DeleteSureAccountScreen.routeName,
                        arguments: ContantListitme(
                          title: S
                              .of(context)
                              .Limited_usage_or_just_experimenting_with_the_app,
                        ));
              },
            ),
            Gap(5.h),
            Divider(
              color: Color(0xffD9D9D9),
            ),
            Gap(5.h),
            SelectProblem(
              title: S
                  .of(context)
                  .Difficulty_finding_the_desired_investmentproduct,
              groupValue: 'Difficulty',
              myValue: selectedRowProblem,
              callBack: () {
                Navigator.of(context)
                    .pushNamed(DeleteSureAccountScreen.routeName,
                        arguments: ContantListitme(
                          title: S
                              .of(context)
                              .Difficulty_finding_the_desired_investmentproduct,
                        ));
              },
            ),
            Gap(5.h),
            Divider(
              color: Color(0xffD9D9D9),
            ),
            Gap(5.h),
            SelectProblem(
              title: S
                  .of(context)
                  .Unhappy_with_existing_features_on_the_application,
              groupValue: 'unhappy',
              myValue: selectedRowProblem,
              callBack: () {
                Navigator.of(context)
                    .pushNamed(DeleteSureAccountScreen.routeName,
                        arguments: ContantListitme(
                          title: S
                              .of(context)
                              .Unhappy_with_existing_features_on_the_application,
                        ));
              },
            ),
            Gap(5.h),
            Divider(
              color: Color(0xffD9D9D9),
            ),
            Gap(5.h),
            SelectProblem(
              title: S.of(context).Personal_reasons,
              groupValue: 'personalReasons',
              myValue: selectedRowProblem,
              callBack: () {
                Navigator.of(context)
                    .pushNamed(DeleteSureAccountScreen.routeName,
                        arguments: ContantListitme(
                          title: S.of(context).Personal_reasons,
                        ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ContantListitme {
  String title;
  ContantListitme({
    required this.title,
  });
}
