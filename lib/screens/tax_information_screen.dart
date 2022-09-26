import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/app_theme.dart';
import '../widgets/appDrawer.dart';
import '../widgets/custom_appbar.dart';

class TaxInformationScreen extends StatefulWidget {
  const TaxInformationScreen({Key? key}) : super(key: key);

  @override
  State<TaxInformationScreen> createState() => _TaxInformationScreenState();
}

class _TaxInformationScreenState extends State<TaxInformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: CustomAppbar(
            isLikeButton: false,
            isProfileImage: false,
            titleText: "Tax Information",
            // onPressedForLeading:,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10, left: 10, top: 10),
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppTheme.whiteColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Tax Residence",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: AppTheme.textColor),
                        ),
                        SizedBox(
                          width: 10.h,
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppTheme.whiteColor,
                              border: Border.all(color: Color(0xff707070))),
                          child: Icon(
                            Icons.add,
                            color: AppTheme.primaryColor,
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "This address will be displayed on invoices.",
                      style: TextStyle(
                          fontSize: 13.sp,
                          color: AppTheme.settingsTextColor.withOpacity(.63)),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      "Address",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: AppTheme.textColor),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "-",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: AppTheme.textColor),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10, left: 10, top: 10),
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppTheme.whiteColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Tax Identification (ID)",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: AppTheme.textColor),
                        ),
                        SizedBox(
                          width: 10.h,
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppTheme.whiteColor,
                              border: Border.all(color: Color(0xff707070))),
                          child: Icon(
                            Icons.add,
                            color: AppTheme.primaryColor,
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "A Permanent Account Number (PAN) is requested from all person located in india.",
                      style: TextStyle(
                          fontSize: 13.sp,
                          color: AppTheme.settingsTextColor.withOpacity(.63)),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10, left: 10, top: 10),
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppTheme.whiteColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Text(
                          "GSTIN",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: AppTheme.textColor),
                        ),
                        SizedBox(
                          width: 10.h,
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppTheme.whiteColor,
                              border: Border.all(color: Color(0xff707070))),
                          child: Icon(
                            Icons.add,
                            color: AppTheme.primaryColor,
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "A Goods and Services Tax Identification Number is requested from all person located in a country where Unify supports GSTIN.",
                      style: TextStyle(
                          fontSize: 13.sp,
                          color: AppTheme.settingsTextColor.withOpacity(.63)),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10, left: 10, top: 10),
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppTheme.whiteColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Text(
                          "W-8BEN",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: AppTheme.textColor),
                        ),
                        SizedBox(
                          width: 10.h,
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppTheme.whiteColor,
                              border: Border.all(color: Color(0xff707070))),
                          child: Icon(
                            Icons.add,
                            color: AppTheme.primaryColor,
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "Before withdrawing funds, all non-U.S. person must provide their W-8BEN tax information.",
                      style: TextStyle(
                          fontSize: 13.sp,
                          color: AppTheme.settingsTextColor.withOpacity(.63)),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      "Legal Name of Taxpayer",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: AppTheme.textColor),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "-",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: AppTheme.textColor),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Federal Tax Classification",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: AppTheme.textColor),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "-",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: AppTheme.textColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
