import 'package:app/src/data/model/dataclass/data_sectors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class SectorItemWidget extends StatelessWidget {
  const SectorItemWidget(
      {super.key, required this.sectorList, required this.index});
  final int index;

  final List<DataSectors> sectorList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: Row(
        children: [
          Image.asset(
            sectorList[index].image,
            height: 60.h,
            width: 60.w,
            fit: BoxFit.contain,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                sectorList[index].name,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.withOpacity(0.8),
                ),
              ),
              Gap(10.h),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Row(
                  children: [
                    Container(
                      constraints: BoxConstraints(maxWidth: 280.w),
                      child: Text(
                        sectorList[index].description,
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      sectorList[index].profit,
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                        color: sectorList[index].isBlue
                            ? Color(0xff21F92A)
                            : Color(0xffED0006),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
