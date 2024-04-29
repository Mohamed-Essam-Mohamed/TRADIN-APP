import 'package:app/generated/l10n.dart';
import 'package:app/src/feature/account/view/settings/delete_account/delete_account_screen.dart';
import 'package:app/src/feature/account/view/settings/security/security_screen.dart';
import 'package:app/src/feature/account/view/settings/subscriptions/subscriptions_screen.dart';
import 'package:app/src/feature/account/view/widget/container_settings.dart';
import 'package:app/src/feature/account/view/widget/container_body_profile.dart';
import 'package:app/src/feature/subscription/view/subscription_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:app/dialog_utilse.dart' as Dialog;

class SettingsScreen extends StatelessWidget {
  static const String routeName = 'SettingsScreen';
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).Setting,
              style: TextStyle(fontSize: 26.sp, fontWeight: FontWeight.bold),
            ),
            Gap(50.h),
            ContainerSettings(
              title: S.of(context).Security,
              onTap: () {
                Navigator.of(context).pushNamed(SecurityScreen.routeName);
              },
            ),
            Gap(20.h),
            Divider(
              color: Colors.grey,
            ),
            Gap(80.h),
            ContainerSettings(
              title: S.of(context).Subscription,
              onTap: () {
                Navigator.of(context)
                    .pushNamed(SetingsSubscribtionScreen.routeName);
              },
            ),
            Gap(20.h),
            Divider(
              color: Colors.grey,
            ),
            Gap(120.h),
            Gap(20.h),
            ContainerBodyProfile(
              pahtSvg: 'assets/icons/logout_icon.svg',
              title: S.of(context).Log_Out,
              onTap: () {
                Dialog.showMassage(
                  context: context,
                  message: S.of(context).Log_Out,
                  body: S.of(context).Are_you_sure_you_want_to_log_out,
                );
              },
              iconColor: Colors.red,
              textColor: Colors.red,
            ),
            Gap(10.h),
            Divider(
              color: Colors.grey,
            ),
            /////
            Gap(50.h),
            ContainerBodyProfile(
              pahtSvg: 'assets/icons/account_delete_icon.svg',
              title: S.of(context).Delete_Account,
              onTap: () {
                Navigator.of(context).pushNamed(DeleteAccountScreen.routeName);
              },
              iconColor: Colors.red,
              textColor: Colors.red,
            ),
            Gap(10.h),
            Divider(
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
