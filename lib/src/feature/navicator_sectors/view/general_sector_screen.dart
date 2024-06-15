import 'package:app/src/data/model/dataclass/data_sectors.dart';
import 'package:app/src/feature/navicator_sectors/view/widget/sector_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../../generated/l10n.dart';

class GeneralSectorScreen extends StatefulWidget {
  static const String routeName = "GeneralSectorScreen";
  const GeneralSectorScreen({super.key, required this.name});
  final String name;

  @override
  State<GeneralSectorScreen> createState() => _GeneralSectorScreenState();
}

class _GeneralSectorScreenState extends State<GeneralSectorScreen> {
  late List<DataSectors> sectorList;
  @override
  void initState() {
    super.initState();
    sectorList = DataSectors.getSectors(name: widget.name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    constraints: BoxConstraints(maxWidth: 360.w),
                    child: Text(
                      widget.name,
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                ],
              ),
              Gap(70.h),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                child: ListView.separated(
                  itemBuilder: (context, index) => SectorItemWidget(
                    sectorList: sectorList,
                    index: index,
                  ),
                  separatorBuilder: (context, index) => Divider(
                    endIndent: 30.w,
                    indent: 30.w,
                  ),
                  itemCount: sectorList.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
