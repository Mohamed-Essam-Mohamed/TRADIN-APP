// ignore_for_file: prefer_const_constructors

import 'package:app/generated/l10n.dart';
import 'package:app/src/feature/account/view/change_language/change_language_screen.dart';
import 'package:app/src/feature/account/view/notifications/notifications_screen.dart';
import 'package:app/src/feature/account/view/settings/settings_screen.dart';
import 'package:app/src/feature/account/view/widget/container_body_profile.dart';
import 'package:app/src/feature/init_home/view/init_home_screen.dart';
import 'package:app/src/utils/app_color.dart';
import 'package:app/src/widget/custom_button.dart';
import 'package:app/src/widget/custom_text_fomr_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class AccountScreen extends StatefulWidget {
  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 14.h, vertical: 20.h),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            width: 63.w,
                            height: 57.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.person_outline,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: SvgPicture.asset(
                              'assets/icons/icons_add_photo.svg',
                              width: 24.w,
                              height: 24.h,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Youstina Salah',
                        style: TextStyle(fontSize: 18.sp, color: Colors.white),
                      ),
                      Text(
                        '@youstinasalah288',
                        style: TextStyle(fontSize: 18.sp, color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
              //!----------------------------------
              Gap(MediaQuery.of(context).size.height * 0.03),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.97,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(65.r),
                    topRight: Radius.circular(65.r),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Gap(70.h),
                    ContainerBodyProfile(
                      pahtSvg: 'assets/icons/bell_icon.svg',
                      title: S.of(context).Notifications,
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(NotifivationsScreen.routeName);
                      },
                    ),
                    Gap(30.h),
                    Divider(
                      color: Colors.grey,
                    ),
                    Gap(40.h),
                    ContainerBodyProfile(
                      pahtSvg: 'assets/icons/Setting_icon.svg',
                      title: S.of(context).Setting,
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(SettingsScreen.routeName);
                      },
                    ),
                    Gap(30.h),
                    Divider(
                      color: Colors.grey,
                    ),
                    Gap(40.h),
                    ContainerBodyProfile(
                      pahtSvg: 'assets/icons/globe_icon.svg',
                      title: S.of(context).Change_Language,
                      onTap: () {
                        showModalBottomLunguage();
                      },
                    ),
                    Gap(30.h),
                    Divider(
                      color: Colors.grey,
                    ),
                    Gap(40.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showModalBottomLunguage() {
    showModalBottomSheet(
      context: context,
      builder: (context) => changeLanguage(),
    );
  }
}
