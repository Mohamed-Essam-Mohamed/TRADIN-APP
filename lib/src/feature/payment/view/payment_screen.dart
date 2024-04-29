import 'package:app/generated/l10n.dart';
import 'package:app/src/feature/data_card/view/data_card_screen.dart';
import 'package:app/src/feature/payment/view/widget/card_widget_payment.dart';
import 'package:app/src/feature/payment/view_model/payment_view_model.dart';
import 'package:app/src/utils/app_color.dart';
import 'package:app/src/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class PaymentScreen extends StatefulWidget {
  static const String routeName = 'PaymentScreen';

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  PaymentViewModel viewModel = PaymentViewModel();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<PaymentViewModel>(
      create: (context) => viewModel,
      child: Scaffold(
        appBar: AppBar(),
        body: SizedBox(
          width: double.infinity,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/credit_card.png',
                  height: 150.h,
                  width: 150.w,
                  fit: BoxFit.fill,
                ),
                Text(
                  S.of(context).PAYMENT_METHOD,
                  style: TextStyle(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                Gap(30.h),
                CardWidgetPayment(
                  svgPicture: 'assets/images/Visa.svg',
                  value: viewModel.visa,
                  groupValue: viewModel.selectRadio!,
                  onChanged: (value) {
                    viewModel.selectRadio = value;
                    setState(() {});
                  },
                ),
                Gap(25.h),
                CardWidgetPayment(
                  svgPicture: 'assets/images/Mastercard.svg',
                  value: viewModel.masterCard,
                  groupValue: viewModel.selectRadio!,
                  onChanged: (value) {
                    viewModel.selectRadio = value;
                    setState(() {});
                  },
                ),
                Gap(25.h),
                CardWidgetPayment(
                  svgPicture: 'assets/images/PayPal.svg',
                  value: viewModel.payPal,
                  groupValue: viewModel.selectRadio!,
                  onChanged: (value) {
                    viewModel.selectRadio = value;
                    setState(() {});
                  },
                ),
                Gap(130.h),
                CustomButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(DataCardScreen.routeName);
                  },
                  title: S.of(context).CONTINUE,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
