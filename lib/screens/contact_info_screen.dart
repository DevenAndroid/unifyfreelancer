import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/app_theme.dart';
import '../widgets/appDrawer.dart';
import '../widgets/common_outline_button.dart';
import '../widgets/custom_appbar.dart';

class ContactInfoScreen extends StatefulWidget {
  const ContactInfoScreen({Key? key}) : super(key: key);

  @override
  State<ContactInfoScreen> createState() => _ContactInfoScreenState();
}

class _ContactInfoScreenState extends State<ContactInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: CustomAppbar(
            isLikeButton: false,
            isProfileImage: false,
            titleText: "Contact Info",
            // onPressedForLeading:,
          ),
        ),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Account",
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: AppTheme.textColor),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppTheme.whiteColor,
                          border: Border.all(color: Color(0xff707070))),
                      child: Icon(
                        Icons.edit,
                        color: AppTheme.primaryColor,
                        size: 15,
                      ),
                    ),
                  ],
                ),

                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding: const EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
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
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  /*    ListTile(
                        leading: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: AppTheme.primaryColor,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1520635360276-79f3dbd809f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"))),
                        ),
                        title: Text(
                          "John Doe",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: AppTheme.greyTextColor2),
                        ),
                        subtitle: Text(
                          "johndoe123@gmail.com",
                          style: TextStyle(
                              fontSize: 14.sp, color: Color(0xff6B6B6B)),
                        ),
                        trailing: Text(
                          "f0ca1922",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff6B6B6B)),
                        ),
                      ),*/
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10,right: 10),
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: AppTheme.primaryColor,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://images.unsplash.com/photo-1520635360276-79f3dbd809f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"))),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "John Doe",
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                          color: AppTheme.greyTextColor2),
                                    ),
                                    Text(
                                      "f0ca1922",
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Color(0xff6B6B6B)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  "johndoe123@gmail.com",
                                  style: TextStyle(
                                      fontSize: 14.sp, color: Color(0xff6B6B6B)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      CustomOutlineButton(
                        title: ' Close My Account ',
                        backgroundColor: AppTheme.whiteColor,
                        expandedValue: false,
                        textColor: AppTheme.primaryColor,
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Additional accounts",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: AppTheme.textColor),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "Creating a new account allows you to use Unify in different ways, while still having just one login.",
                  style: TextStyle(
                      fontSize: 13.sp,
                      color: AppTheme.textColor.withOpacity(.63)),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding: const EdgeInsets.only(right: 10,top: 10,left: 20,bottom: 10),
                  width: MediaQuery.of(context).size.width,
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
                        offset:
                        const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Client Account",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: AppTheme.textColor),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "Hire, manage and pay as a different company. Each client company has its own freelancers, payment methods and reports.",
                        style: TextStyle(
                            fontSize: 13.sp,
                            color: AppTheme.textColor.withOpacity(.63)),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomOutlineButton(
                        title: ' New Client Account ',
                        backgroundColor: AppTheme.whiteColor,
                        expandedValue: false,
                        textColor: AppTheme.primaryColor,
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Agency Account",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: AppTheme.textColor),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "Find jobs and earn money as manager of a team of freelancers.",
                        style: TextStyle(
                            fontSize: 13.sp,
                            color: AppTheme.textColor.withOpacity(.63)),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomOutlineButton(
                        title: ' New Agency Account ',
                        backgroundColor: AppTheme.whiteColor,
                        expandedValue: false,
                        textColor: AppTheme.primaryColor,
                        onPressed: () {},
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height:5.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Location",
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: AppTheme.textColor),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppTheme.whiteColor,
                          border: Border.all(color: Color(0xff707070))),
                      child: Icon(
                        Icons.edit,
                        color: AppTheme.primaryColor,
                        size: 15,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding: const EdgeInsets.only(right: 10,top: 10,left: 20,bottom: 10),
                  width: MediaQuery.of(context).size.width,
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
                        offset:
                        const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Phone",
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Color(0xff393939)),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "+91 98-76-54-3210",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: AppTheme.settingsTextColor),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Divider(
                        color: AppTheme.primaryColor.withOpacity(.49),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Time Zone",
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Color(0xff393939)),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "UTC+05:30 Mumbai, Kolkata, Chennai, New Delhi",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: AppTheme.settingsTextColor),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Divider(
                        color: AppTheme.primaryColor.withOpacity(.49),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Address",
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Color(0xff393939)),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "India",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: AppTheme.settingsTextColor),
                      ),


                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
