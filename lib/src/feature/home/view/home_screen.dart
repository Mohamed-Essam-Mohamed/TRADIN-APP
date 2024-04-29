import 'package:app/generated/l10n.dart';
import 'package:app/src/feature/home/view/widget/container_home_screen_bast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> items = [
      S.of(context).The_most_profitable_stocks,
      S.of(context).Best_selling_stocks,
      S.of(context).The_most_profitable_stocks,
      S.of(context).Best_selling_stocks,
      S.of(context).The_most_profitable_stocks,
      S.of(context).Best_selling_stocks,
      S.of(context).The_most_profitable_stocks,
      S.of(context).Best_selling_stocks,
      S.of(context).The_most_profitable_stocks,
      S.of(context).Best_selling_stocks,
    ];
    List<String> listSectors1 = [
      S.of(context).banks,
      S.of(context).Industrial_services_products_and_cars,
      S.of(context).real_estate,
      S.of(context).tourism_and_entertainment,
      S.of(context).communications_media_and_information_technology,
      S.of(context).food_drinks_and_tobacco,
      S.of(context).energy_and_support_services,
      S.of(context).traders_and_distributors,
      S.of(context).transportation_and_shipping_services,
    ];
    List<String> listSectors2 = [
      S.of(context).educational_services,
      S.of(context).non_banking_financial_services,
      S.of(context).engineering_contracting_and_construction,
      S.of(context).textiles_and_durable_goods,
      S.of(context).building_materials,
      S.of(context).Health_care_and_medicines,
      S.of(context).basic_resources,
      S.of(context).paper_and_packaging_materials,
    ];

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
                      "${S.of(context).Hi} Rogena!",
                      style: TextStyle(
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    Text(
                      '9 April, 2024',
                      style: TextStyle(color: Colors.grey.shade400),
                    ),
                    Gap(25.h),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon:
                            SvgPicture.asset('assets/icons/Search_alt.svg'),
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: EdgeInsets.only(left: 12.w),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                      ),
                    ),
                    Gap(120.h),
                    SizedBox(
                      height: 380.h,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            ContainerHomeScreenBast(
                          title: items[index],
                          index: index,
                        ),
                        itemCount: listSectors1.length,
                        separatorBuilder: (context, index) => Gap(20.h),
                      ),
                    ),
                    Gap(10.h),
                    Text(
                      S.of(context).sectors,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 24.sp,
                      ),
                    ),
                    Gap(10.h),
                    Container(
                      height: 120.h,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 50.h,
                                child: ListView.separated(
                                  physics: NeverScrollableScrollPhysics(),
                                  separatorBuilder: (context, index) =>
                                      Gap(10.h),
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) =>
                                      WidgetSectors(
                                    title1: listSectors1[index],
                                    isSelected: true,
                                  ),
                                  itemCount: listSectors1.length,
                                ),
                              ),
                              Gap(10.h),
                              Container(
                                height: 50.h,
                                child: ListView.separated(
                                  physics: NeverScrollableScrollPhysics(),
                                  separatorBuilder: (context, index) =>
                                      Gap(10.h),
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) =>
                                      WidgetSectors(
                                    title1: listSectors2[index],
                                    isSelected: true,
                                  ),
                                  itemCount: listSectors2.length,
                                ),
                              ),
                            ],
                          ),
                        ],
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

class WidgetSectors extends StatelessWidget {
  String title1;

  bool isSelected;
  WidgetSectors({
    super.key,
    required this.title1,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      // width: 100.w,

      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
      ), // (10.h),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(20.r),
        color: Color(0xffE4F3F8),
      ),
      alignment: Alignment.center,

      child: Text(
        title1,
        maxLines: 1,
        // overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 22.sp,
        ),
      ),
    );
  }
}
