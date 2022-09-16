import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/app_theme.dart';
import '../widgets/appDrawer.dart';
import '../widgets/custom_appbar.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppbar(
          isLikeButton: false,
          isProfileImage: false,
          titleText: "Settings",
          // onPressedForLeading:,
        ),
      ),
      drawer: AppDrawerScreen(),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Card(
                    margin: EdgeInsets.only(top: 10),
                    color: AppTheme.whiteColor,
                    elevation: 1,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  padding: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppTheme.primaryColor
                                          .withOpacity(.15)),
                                  child: Icon(
                                    Icons.account_balance_wallet,
                                    color: AppTheme.primaryColor,
                                    size: 20,
                                  )),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "Billing & Payment",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff1F1F1F)),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: AppTheme.blackColor,
                            size: 20,
                          )
                        ],
                      ),
                    )),
                Card(
                    margin: EdgeInsets.only(top: 10),
                    color: AppTheme.whiteColor,
                    elevation: 1,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  padding: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppTheme.primaryColor
                                          .withOpacity(.15)),
                                  child: Icon(
                                    Icons.description_outlined,
                                    color: AppTheme.primaryColor,
                                    size: 20,
                                  )),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "Contact info",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff1F1F1F)),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: AppTheme.blackColor,
                            size: 20,
                          )
                        ],
                      ),
                    )),
                Card(
                    margin: EdgeInsets.only(top: 10),
                    color: AppTheme.whiteColor,
                    elevation: 1,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  padding: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppTheme.primaryColor
                                          .withOpacity(.15)),
                                  child: Image.asset("assets/icon/tax.png")),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "Tax Information",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff1F1F1F)),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: AppTheme.blackColor,
                            size: 20,
                          )
                        ],
                      ),
                    )),
                Card(
                    margin: EdgeInsets.only(top: 10),
                    color: AppTheme.whiteColor,
                    elevation: 1,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  padding: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppTheme.primaryColor
                                          .withOpacity(.15)),
                                  child: Icon(
                                    Icons.person_outline_rounded,
                                    color: AppTheme.primaryColor,
                                    size: 20,
                                  )),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "Profile setting",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff1F1F1F)),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: AppTheme.blackColor,
                            size: 20,
                          )
                        ],
                      ),
                    )),
                Card(
                    margin: EdgeInsets.only(top: 10),
                    color: AppTheme.whiteColor,
                    elevation: 1,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  padding: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppTheme.primaryColor
                                          .withOpacity(.15)),
                                  child: Icon(
                                    Icons.account_balance_wallet,
                                    color: AppTheme.primaryColor,
                                    size: 20,
                                  )),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "Get paid",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff1F1F1F)),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: AppTheme.blackColor,
                            size: 20,
                          )
                        ],
                      ),
                    )),
                Card(
                    margin: EdgeInsets.only(top: 10),
                    color: AppTheme.whiteColor,
                    elevation: 1,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  padding: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppTheme.primaryColor
                                          .withOpacity(.15)),
                                  child: Icon(
                                    Icons.people_outline,
                                    color: AppTheme.primaryColor,
                                    size: 20,
                                  )),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "My Teams ",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff1F1F1F)),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: AppTheme.blackColor,
                            size: 20,
                          )
                        ],
                      ),
                    )),
                Card(
                    margin: EdgeInsets.only(top: 10),
                    color: AppTheme.whiteColor,
                    elevation: 1,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  padding: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppTheme.primaryColor
                                          .withOpacity(.15)),
                                  child: Icon(
                                    Icons.lock_outline,
                                    color: AppTheme.primaryColor,
                                    size: 20,
                                  )),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "Password & security",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff1F1F1F)),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: AppTheme.blackColor,
                            size: 20,
                          )
                        ],
                      ),
                    )),
              ],
            )),
      ),
    );
  }
}
