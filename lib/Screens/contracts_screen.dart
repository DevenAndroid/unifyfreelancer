import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/app_theme.dart';
import '../widgets/common_outline_button.dart';
import '../widgets/custom_appbar.dart';

class ContractsScreen extends StatefulWidget {
  const ContractsScreen({Key? key}) : super(key: key);

  @override
  State<ContractsScreen> createState() => _ContractsScreenState();
}

class _ContractsScreenState extends State<ContractsScreen> {
  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppbar(
          isLikeButton: true,
          isProfileImage: true,
          titleText: "Jobs",
        ),
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: deviceHeight * .01,
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppTheme.whiteColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(30),
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
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle:
                          TextStyle(color: AppTheme.textColor, fontSize: 14.sp),
                      filled: true,
                      fillColor: Colors.white24,
                      hintText: 'Search contracts',
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 13),
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 25,
                        color: AppTheme.primaryColor,
                      )),
                ),
              ),
              SizedBox(
                height: deviceHeight * .01,
              ),
              DefaultTabController(
                  length: 5, // length of tabs
                  initialIndex: 0,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        TabBar(
                          isScrollable: true,
                          labelColor: Color(0xff271943),
                          labelStyle: TextStyle(fontWeight: FontWeight.w500),
                          unselectedLabelColor: Color(0xff707070),
                          // indicatorColor: const Color(0xffFA61FF),
                          indicator: UnderlineTabIndicator(
                            borderSide: BorderSide(
                              width: 3.0.w,
                              color: AppTheme.pinkText,
                            ),
                          ),
                          automaticIndicatorColorAdjustment: true,
                          unselectedLabelStyle:
                              const TextStyle(color: Color(0xff707070)),
                          tabs: [
                            Tab(
                              child: Text(
                                "All",
                                style: TextStyle(
                                  fontSize: 15.sp,
                                ),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Hourly (5)",
                                style: TextStyle(
                                  fontSize: 15.sp,
                                ),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Active Milestones (5)",
                                style: TextStyle(
                                  fontSize: 15.sp,
                                ),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Awaiting Milestones",
                                style: TextStyle(
                                  fontSize: 15.sp,
                                ),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Payment Requests",
                                style: TextStyle(
                                  fontSize: 15.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                            decoration: const BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                        color: AppTheme.pinkText, width: 0.5))),
                            height: deviceHeight - deviceWidth * .55,
                            child: TabBarView(
                              children: [
                                ListView.builder(
                                  shrinkWrap: true,
                                  physics: const BouncingScrollPhysics(),
                                  itemCount: 10,
                                  padding: EdgeInsets.only(bottom: 20),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                      margin: const EdgeInsets.only(
                                          top: 15, right: 10, left: 10),
                                      width: deviceWidth,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 20),
                                      decoration: BoxDecoration(
                                        color: AppTheme.whiteColor,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.2),
                                            spreadRadius: 2,
                                            blurRadius: 4,
                                            offset: const Offset(0,
                                                3), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "UI/UX Design And Laravel Development.",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color:
                                                          AppTheme.darkBlueText,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  showModalBottomSheet<void>(
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      return Container(
                                                        color:
                                                            AppTheme.whiteColor,
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  10),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: <Widget>[
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topRight,
                                                                  child:
                                                                      InkWell(
                                                                    onTap: () =>
                                                                        Navigator.pop(
                                                                            context),
                                                                    child: Icon(
                                                                      Icons
                                                                          .cancel,
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                                  )),
                                                              const Text(
                                                                'View work diary',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: AppTheme
                                                                        .darkBlueText),
                                                              ),
                                                              SizedBox(
                                                                height:
                                                                    deviceWidth *
                                                                        .03,
                                                              ),
                                                              const Text(
                                                                'Send Message',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: AppTheme
                                                                        .darkBlueText),
                                                              ),
                                                              SizedBox(
                                                                height:
                                                                    deviceWidth *
                                                                        .03,
                                                              ),
                                                              const Text(
                                                                'Propose new contract',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: AppTheme
                                                                        .darkBlueText),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color:
                                                          AppTheme.primaryColor,
                                                      shape: BoxShape.circle),
                                                  child: Icon(
                                                    Icons.more_horiz_outlined,
                                                    color: AppTheme.whiteColor,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: deviceHeight * .01,
                                          ),
                                          Text(
                                            "Staffed by: Robert Smith",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: AppTheme.darkBlueText,
                                            ),
                                          ),
                                          SizedBox(
                                            height: deviceHeight * .02,
                                          ),
                                          Text(
                                            "Hired by:  Jolly trid",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: AppTheme.textColor,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: deviceHeight * .01,
                                          ),
                                          Text(
                                            "Soft Co",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: AppTheme.textColor3,
                                            ),
                                          ),
                                          SizedBox(
                                            height: deviceHeight * .02,
                                          ),
                                          Text(
                                            "Active: 2:30 hrs this week",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: AppTheme.textColor,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: deviceHeight * .01,
                                          ),
                                          Text(
                                            "Oct 16 - Present",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: AppTheme.textColor3,
                                            ),
                                          ),
                                          SizedBox(
                                            height: deviceHeight * .025,
                                          ),
                                          CustomOutlineButton(
                                            title: "See TImesheet",
                                            backgroundColor:
                                                AppTheme.primaryColor,
                                            textColor: AppTheme.whiteColor,
                                            expandedValue: true,
                                            onPressed: () {},
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                ),
                                ListView.builder(
                                  shrinkWrap: true,
                                  physics: const BouncingScrollPhysics(),
                                  itemCount: 10,
                                  padding: EdgeInsets.only(bottom: 20),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                      margin: const EdgeInsets.only(
                                          top: 15, right: 10, left: 10),
                                      width: deviceWidth,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 20),
                                      decoration: BoxDecoration(
                                        color: AppTheme.whiteColor,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.2),
                                            spreadRadius: 2,
                                            blurRadius: 4,
                                            offset: const Offset(0,
                                                3), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "UI/UX Design And Laravel Development.",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color:
                                                          AppTheme.darkBlueText,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  showModalBottomSheet<void>(
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      return Container(
                                                        color:
                                                            AppTheme.whiteColor,
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  10),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: <Widget>[
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topRight,
                                                                  child:
                                                                      InkWell(
                                                                    onTap: () =>
                                                                        Navigator.pop(
                                                                            context),
                                                                    child: Icon(
                                                                      Icons
                                                                          .cancel,
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                                  )),
                                                              const Text(
                                                                'View work diary',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: AppTheme
                                                                        .darkBlueText),
                                                              ),
                                                              SizedBox(
                                                                height:
                                                                    deviceWidth *
                                                                        .03,
                                                              ),
                                                              const Text(
                                                                'Send Message',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: AppTheme
                                                                        .darkBlueText),
                                                              ),
                                                              SizedBox(
                                                                height:
                                                                    deviceWidth *
                                                                        .03,
                                                              ),
                                                              const Text(
                                                                'Propose new contract',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: AppTheme
                                                                        .darkBlueText),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color:
                                                          AppTheme.primaryColor,
                                                      shape: BoxShape.circle),
                                                  child: Icon(
                                                    Icons.more_horiz_outlined,
                                                    color: AppTheme.whiteColor,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: deviceHeight * .01,
                                          ),
                                          Text(
                                            "Staffed by: Robert Smith",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: AppTheme.darkBlueText,
                                            ),
                                          ),
                                          SizedBox(
                                            height: deviceHeight * .02,
                                          ),
                                          Text(
                                            "Hired by:  Jolly trid",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: AppTheme.textColor,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: deviceHeight * .01,
                                          ),
                                          Text(
                                            "Soft Co",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: AppTheme.textColor3,
                                            ),
                                          ),
                                          SizedBox(
                                            height: deviceHeight * .02,
                                          ),
                                          Text(
                                            "Active: 2:30 hrs this week",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: AppTheme.textColor,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: deviceHeight * .01,
                                          ),
                                          Text(
                                            "Oct 16 - Present",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: AppTheme.textColor3,
                                            ),
                                          ),
                                          SizedBox(
                                            height: deviceHeight * .025,
                                          ),
                                          CustomOutlineButton(
                                            title: "See TImesheet",
                                            backgroundColor:
                                                AppTheme.primaryColor,
                                            textColor: AppTheme.whiteColor,
                                            expandedValue: true,
                                            onPressed: () {},
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                ),
                                ListView.builder(
                                  shrinkWrap: true,
                                  physics: const BouncingScrollPhysics(),
                                  itemCount: 10,
                                  padding: EdgeInsets.only(bottom: 20),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                      margin: const EdgeInsets.only(
                                          top: 15, right: 10, left: 10),
                                      width: deviceWidth,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 20),
                                      decoration: BoxDecoration(
                                        color: AppTheme.whiteColor,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.2),
                                            spreadRadius: 2,
                                            blurRadius: 4,
                                            offset: const Offset(0,
                                                3), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "UI/UX Design And Laravel Development.",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color:
                                                          AppTheme.darkBlueText,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  showModalBottomSheet<void>(
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      return Container(
                                                        color:
                                                            AppTheme.whiteColor,
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  10),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: <Widget>[
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topRight,
                                                                  child:
                                                                      InkWell(
                                                                    onTap: () =>
                                                                        Navigator.pop(
                                                                            context),
                                                                    child: Icon(
                                                                      Icons
                                                                          .cancel,
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                                  )),
                                                              const Text(
                                                                'View work diary',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: AppTheme
                                                                        .darkBlueText),
                                                              ),
                                                              SizedBox(
                                                                height:
                                                                    deviceWidth *
                                                                        .03,
                                                              ),
                                                              const Text(
                                                                'Send Message',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: AppTheme
                                                                        .darkBlueText),
                                                              ),
                                                              SizedBox(
                                                                height:
                                                                    deviceWidth *
                                                                        .03,
                                                              ),
                                                              const Text(
                                                                'Propose new contract',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: AppTheme
                                                                        .darkBlueText),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color:
                                                          AppTheme.primaryColor,
                                                      shape: BoxShape.circle),
                                                  child: Icon(
                                                    Icons.more_horiz_outlined,
                                                    color: AppTheme.whiteColor,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: deviceHeight * .01,
                                          ),
                                          Text(
                                            "Staffed by: Robert Smith",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: AppTheme.darkBlueText,
                                            ),
                                          ),
                                          SizedBox(
                                            height: deviceHeight * .02,
                                          ),
                                          Text(
                                            "Hired by:  Jolly trid",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: AppTheme.textColor,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: deviceHeight * .01,
                                          ),
                                          Text(
                                            "Soft Co",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: AppTheme.textColor3,
                                            ),
                                          ),
                                          SizedBox(
                                            height: deviceHeight * .02,
                                          ),
                                          Text(
                                            "Active: 2:30 hrs this week",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: AppTheme.textColor,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: deviceHeight * .01,
                                          ),
                                          Text(
                                            "Oct 16 - Present",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: AppTheme.textColor3,
                                            ),
                                          ),
                                          SizedBox(
                                            height: deviceHeight * .025,
                                          ),
                                          CustomOutlineButton(
                                            title: "See TImesheet",
                                            backgroundColor:
                                                AppTheme.primaryColor,
                                            textColor: AppTheme.whiteColor,
                                            expandedValue: true,
                                            onPressed: () {},
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                ),
                                ListView.builder(
                                  shrinkWrap: true,
                                  physics: const BouncingScrollPhysics(),
                                  itemCount: 10,
                                  padding: EdgeInsets.only(bottom: 20),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                      margin: const EdgeInsets.only(
                                          top: 15, right: 10, left: 10),
                                      width: deviceWidth,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 20),
                                      decoration: BoxDecoration(
                                        color: AppTheme.whiteColor,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.2),
                                            spreadRadius: 2,
                                            blurRadius: 4,
                                            offset: const Offset(0,
                                                3), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "UI/UX Design And Laravel Development.",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color:
                                                          AppTheme.darkBlueText,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  showModalBottomSheet<void>(
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      return Container(
                                                        color:
                                                            AppTheme.whiteColor,
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  10),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: <Widget>[
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topRight,
                                                                  child:
                                                                      InkWell(
                                                                    onTap: () =>
                                                                        Navigator.pop(
                                                                            context),
                                                                    child: Icon(
                                                                      Icons
                                                                          .cancel,
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                                  )),
                                                              const Text(
                                                                'View work diary',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: AppTheme
                                                                        .darkBlueText),
                                                              ),
                                                              SizedBox(
                                                                height:
                                                                    deviceWidth *
                                                                        .03,
                                                              ),
                                                              const Text(
                                                                'Send Message',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: AppTheme
                                                                        .darkBlueText),
                                                              ),
                                                              SizedBox(
                                                                height:
                                                                    deviceWidth *
                                                                        .03,
                                                              ),
                                                              const Text(
                                                                'Propose new contract',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: AppTheme
                                                                        .darkBlueText),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color:
                                                          AppTheme.primaryColor,
                                                      shape: BoxShape.circle),
                                                  child: Icon(
                                                    Icons.more_horiz_outlined,
                                                    color: AppTheme.whiteColor,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: deviceHeight * .01,
                                          ),
                                          Text(
                                            "Staffed by: Robert Smith",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: AppTheme.darkBlueText,
                                            ),
                                          ),
                                          SizedBox(
                                            height: deviceHeight * .02,
                                          ),
                                          Text(
                                            "Hired by:  Jolly trid",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: AppTheme.textColor,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: deviceHeight * .01,
                                          ),
                                          Text(
                                            "Soft Co",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: AppTheme.textColor3,
                                            ),
                                          ),
                                          SizedBox(
                                            height: deviceHeight * .02,
                                          ),
                                          Text(
                                            "Active: 2:30 hrs this week",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: AppTheme.textColor,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: deviceHeight * .01,
                                          ),
                                          Text(
                                            "Oct 16 - Present",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: AppTheme.textColor3,
                                            ),
                                          ),
                                          SizedBox(
                                            height: deviceHeight * .025,
                                          ),
                                          CustomOutlineButton(
                                            title: "See TImesheet",
                                            backgroundColor:
                                                AppTheme.primaryColor,
                                            textColor: AppTheme.whiteColor,
                                            expandedValue: true,
                                            onPressed: () {},
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                ),
                                ListView.builder(
                                  shrinkWrap: true,
                                  physics: const BouncingScrollPhysics(),
                                  itemCount: 1,
                                  padding: EdgeInsets.only(bottom: 20),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                      margin: const EdgeInsets.only(
                                          top: 15, right: 10, left: 10),
                                      width: deviceWidth,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 30),
                                      decoration: BoxDecoration(
                                        color: AppTheme.whiteColor,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.2),
                                            spreadRadius: 2,
                                            blurRadius: 4,
                                            offset: const Offset(0,
                                                3), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Image.asset("assets/images/card.png"),
                                          SizedBox(
                                            height: deviceHeight * .02,
                                          ),
                                          Text(
                                            "You have no fixed-price contracts with payment requests",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: AppTheme.textColor),
                                            textAlign: TextAlign.center,
                                          ),
                                          SizedBox(
                                            height: deviceHeight * .02,
                                          ),
                                          CustomOutlineButton(
                                            title: "View ALL Contracts",
                                            backgroundColor:
                                                AppTheme.primaryColor,
                                            onPressed: () {},
                                            expandedValue: true,
                                            textColor: AppTheme.whiteColor,
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ],
                            )),
                      ])),
            ],
          ),
        ),
      ),
    );
  }
}
