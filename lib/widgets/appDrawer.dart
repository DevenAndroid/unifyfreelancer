import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/app_theme.dart';


class AppDrawerScreen extends StatefulWidget {
  const AppDrawerScreen({Key? key}) : super(key: key);

  @override
  State<AppDrawerScreen> createState() => _AppDrawerScreenState();
}

class _AppDrawerScreenState extends State<AppDrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: 120,
            child: DrawerHeader(
              padding: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Card(
                        elevation: 2,
                        margin: const EdgeInsets.all(7),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        child: Container(
                          margin: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                              color: AppTheme.blackColor,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80"),
                                  fit: BoxFit.cover)),
                          height: 40.h,
                          width: 40.w,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Jonny Smith",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: AppTheme.whiteColor),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "Freelancer",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: AppTheme.whiteColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.clear,
                        color: AppTheme.whiteColor,
                      ))
                ],
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xfff2bde2),
                    Color(0xffa39ef5),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppTheme.primaryColor.withOpacity(.15)),
              child: Icon(
                Icons.person,
                color: AppTheme.primaryColor,
              ),
            ),
            title: Text(
              'Profile',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppTheme.textColor),
            ),
            onTap: () {},
          ),
          const Divider(
            color: Color(0xff6D2EF1),
          ),
          ListTile(
            leading: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppTheme.primaryColor.withOpacity(.15)),
              child: Icon(
                Icons.pie_chart,
                color: AppTheme.primaryColor,
              ),
            ),
            title: Text(
              'Reports',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppTheme.textColor),
            ),
            onTap: () {},
          ),
          const Divider(
            color: Color(0xff6D2EF1),
          ),
          ListTile(
            leading: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppTheme.primaryColor.withOpacity(.15)),
                child: Image.asset(
                  "assets/icon/badge.png",
                  height: 25,
                  width: 25,
                )),
            title: Text(
              'Unify Qualifications',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppTheme.textColor),
            ),
            onTap: () {},
          ),
          const Divider(
            color: Color(0xff6D2EF1),
          ),
          ListTile(
            leading: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppTheme.primaryColor.withOpacity(.15)),
              child: Icon(
                Icons.settings,
                color: AppTheme.primaryColor,
              ),
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppTheme.textColor),
            ),
            onTap: () {},
          ),
          const Divider(
            color: Color(0xff6D2EF1),
          ),
          ListTile(
            leading: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppTheme.primaryColor.withOpacity(.15)),
              child: Icon(
                Icons.help,
                color: AppTheme.primaryColor,
              ),
            ),
            title: Text(
              'Help & Support',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppTheme.textColor),
            ),
            onTap: () {},
          ),
          const Divider(
            color: Color(0xff6D2EF1),
          ),
          ListTile(
            leading: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppTheme.primaryColor.withOpacity(.15)),
              child: Icon(
                Icons.power_settings_new,
                color: AppTheme.primaryColor,
              ),
            ),
            title: Text(
              'Logout',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppTheme.textColor),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
