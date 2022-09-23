import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/app_theme.dart';
import '../widgets/appDrawer.dart';
import '../widgets/custom_appbar.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: CustomAppbar(
            isLikeButton: true,
            isProfileImage: true,
            titleText: "Messages",
          ),
        ),
        drawer: AppDrawerScreen(),
        body: SingleChildScrollView(

          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppTheme.whiteColor,
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
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Alex K.",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: AppTheme.greyTextColor2),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10.0),
                                      child: Icon(
                                        Icons.star_rate_rounded,
                                        color: AppTheme.pinkText,
                                      ),
                                    )
                                  ],
                                ),
                                Text(
                                  "Friday, July 20, 2020",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: AppTheme.greyTextColor2),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              "Derby, United Kingdom",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xff2F2643)),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
              Container(
                height: MediaQuery.of(context).size.height - 234,
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: AlwaysScrollableScrollPhysics(),
                    itemCount: 10,
                    padding: EdgeInsets.only(bottom: 20),
                    itemBuilder: (context, index) {
                      return index % 2 == 0
                          ? Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Stack(children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          .8,
                                      padding: EdgeInsets.all(20),
                                      decoration: BoxDecoration(
                                        color: AppTheme.whiteColor,
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
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 25),
                                        child: Text(
                                            "Our motivation is to enable computerized connections through versatility. By planning and creating ",style: TextStyle(fontSize: 12,color: Color(0xff151021)),
                                            textAlign: TextAlign.right),
                                      )),
                                ),
                                Positioned(
                                  left: 25,
                                  child: Container(
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
                                )
                              ]),
                            )
                          : Stack(children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * .8,
                                    padding: EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                      color: AppTheme.whiteColor,
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
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 25),
                                      child: Text(
                                        "Our motivation is to enable computerized connections through versatility. By planning and creating ",style: TextStyle(fontSize: 12,color: Color(0xff151021)),
                                      ),
                                    )),
                              ),
                              Positioned(
                                right: 25,
                                child: Container(
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
                              )
                            ]);
                    }),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                      color: AppTheme.whiteColor,
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
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Write a message",
                                border: InputBorder.none),
                          ),
                        ),
                        Icon(Icons.phone),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          "@",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Icon(Icons.attach_file),
                        SizedBox(
                          width: 5.w,
                        ),
                        Icon(Icons.send),
                      ],
                    ),
                  ))
            ],
          ),
        ));
  }
}
