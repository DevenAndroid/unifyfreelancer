import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:unifyfreelancer/widgets/common_outline_button.dart';

import '../resources/app_theme.dart';
import '../widgets/appDrawer.dart';
import '../widgets/custom_appbar.dart';

class AlertsScreen extends StatefulWidget {
  const AlertsScreen({Key? key}) : super(key: key);

  @override
  State<AlertsScreen> createState() => _AlertsScreenState();
}

class _AlertsScreenState extends State<AlertsScreen> {
  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppbar(
          isLikeButton: true,
          isProfileImage: true,
          titleText: "Alerts",
        ),
      ),
      drawer: AppDrawerScreen(),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Today",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 18,
                      color: AppTheme.textColor,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: deviceHeight * .01,
              ),
              ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      decoration: BoxDecoration(
                        color: AppTheme.whiteColor,
                        border: Border(
                            bottom: BorderSide(
                                color:
                                    AppTheme.primaryColor.withOpacity(.15))),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color:
                                      AppTheme.primaryColor.withOpacity(.15)),
                              child: Image.asset(
                                "assets/icon/rocket.png",
                              )),
                          SizedBox(
                            width: 10.w,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: AppTheme.textColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 20.w,
                                ),
                                index % 2 == 0
                                    ? CustomOutlineButton(
                                        expandedValue: false,
                                        title: "   Respond   ",
                                        backgroundColor:
                                            AppTheme.primaryColor,
                                        textColor: AppTheme.whiteColor,
                                        onPressed: () {},
                                      )
                                    : SizedBox()
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.clear,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ],
          );
        },
      ),
    );
  }
}
