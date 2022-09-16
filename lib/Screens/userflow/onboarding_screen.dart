//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../../resources/app_theme.dart';
// import '../../routers/my_router.dart';
// import '../../widgets/common_outline_button.dart';
//
// class OnBoardingScreen extends StatefulWidget {
//   const OnBoardingScreen({Key? key}) : super(key: key);
//
//   @override
//   State<OnBoardingScreen> createState() => _OnBoardingScreenState();
// }
//
// class _OnBoardingScreenState extends State<OnBoardingScreen> {
//   int currentIndex = 0;
//   PageController? _controller;
//
//   @override
//   void initState() {
//     _controller = PageController(initialPage: 0);
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var deviceWidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: AppTheme.whiteColor,
//       body: SingleChildScrollView(
//         child: Container(
//           height: MediaQuery.of(context).size.height,
//           child: Column(
//             children: [
//               Container(
//                 margin: EdgeInsets.only(top: 5),
//                 child: SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.5,
//                   child: PageView.builder(
//                       controller: _controller,
//                       scrollDirection: Axis.horizontal,
//                       itemCount: contents.length,
//                       onPageChanged: (int index) {
//                         setState(() {
//                           currentIndex = index;
//                         });
//                       },
//                       itemBuilder: (_, i) {
//                         return Image.asset(
//                           "assets/images/sta.jpg",
//                           width: MediaQuery.of(context).size.width,
//                           height: MediaQuery.of(context).size.height * 0.5,
//                           fit: BoxFit.cover,
//                         );
//                       }),
//                 ),
//               ),
//               SingleChildScrollView(
//                 child: Container(
//                   //height: MediaQuery.of(context).size.height * 0.5,
//                   width: MediaQuery.of(context).size.width,
//                   decoration: const BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.only(
//                       topRight: Radius.circular(40.0),
//                       topLeft: Radius.circular(40.0),
//                     ),
//                   ),
//                   padding: const EdgeInsets.symmetric(horizontal: 26),
//                   child: Column(
//                     children: [
//                       const SizedBox(
//                         height: 40,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: List.generate(
//                           contents.length,
//                               (index) => buildDot(index, context),
//                         ),
//                       ),
//                       SizedBox(height: 40),
//                       Text(
//                         contents[currentIndex].title.toString(),
//                         textAlign: TextAlign.center,
//                         style: const TextStyle(
//                           fontSize: 24,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.black,
//                         ),
//                       ),
//                       SizedBox(height: 40),
//                       Text(
//                         contents[currentIndex].description.toString(),
//                         textAlign: TextAlign.center,
//                         style: const TextStyle(
//                           height: 1.20,
//                           fontWeight: FontWeight.w400,
//                           fontSize: 16,
//                           color: Colors.grey,
//                         ),
//                       ),
//                       SizedBox(height: 20),
//                       currentIndex == 0 || currentIndex == 1
//                           ? InkWell(
//                         onTap: () {
//                           if (currentIndex == 0) {
//                             _controller!.animateToPage(
//                               currentIndex + 1,
//                               duration: const Duration(milliseconds: 500),
//                               curve: Curves.ease,
//                             );
//                           }
//                         },
//                         child: Container(
//                           height: 60,
//                           width: 60,
//                           decoration: const BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: AppTheme.primaryColor,
//                           ),
//                           padding: const EdgeInsets.all(5),
//                           // margin: EdgeInsets.all(30),
//                           //width: double.infinity,
//                           child: const Icon(
//                             Icons.arrow_forward_outlined,
//                             color: Colors.white,
//                             size: 26,
//                           ),
//                         ),
//                       )
//                           : ClipRRect(
//                         borderRadius: BorderRadius.circular(300.0),
//                         child: CustomOutlineButton(
//                           backgroundColor: AppTheme.primaryColor,
//                           textColor: AppTheme.whiteColor,
//                           title: "Get Started",
//                           onPressed: () {
//                             Get.toNamed(MyRouter.loginScreen);
//                           },
//                         ),
//                       ),
//                       SizedBox(height: 20),
//                     ],
//                   ),
//                 ),
//               ),
//               // Container(
//               //   height: MediaQuery.of(context).size.height * 0.073,
//               //   child: GestureDetector(
//               //     onTap: () {
//               //       Get.offAllNamed(MyRouter.loginScreen);
//               //     },
//               //     child: const Text(
//               //       'Skip',
//               //       style: TextStyle(
//               //           fontSize: 18,
//               //           fontWeight: FontWeight.w500,
//               //           decoration: TextDecoration.underline,
//               //           color: AppTheme.filtter),
//               //     ),
//               //   ),
//               // ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Container buildDot(int index, BuildContext context) {
//     return Container(
//       height: 6,
//       width: currentIndex == index ? 28 : 10,
//       margin: const EdgeInsets.only(right: 5),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: currentIndex == index
//             ? AppTheme.primaryColor
//             : Colors.grey.shade300,
//       ),
//     );
//   }
// }
//
// class UnBordingContent {
//   String? image;
//   String? title;
//   String? description;
//
//   UnBordingContent({this.image, this.title, this.description});
// }
//
// List<UnBordingContent> contents = [
//   UnBordingContent(
//       image: 'onBoarding_01.png',
//       title: "Never miss an opportunity",
//       description: "Based out of Southern California, "
//           "our Security Consultants develop security strategies, "
//           "solutions and recommendations, not just for the "
//           "short term."),
//   UnBordingContent(
//       image: 'assets/images/onBoarding_02.png',
//       title: "Find interesting project and \n submit proposals ",
//       description: "Based out of Southern California, "
//           "our Security Consultants develop security strategies, "
//           "solutions and recommendations, not just for the "
//           "short term."),
//   UnBordingContent(
//       image: 'assets/images/onBoarding_03.png',
//       title: "Collabarate on the go",
//       description: "Based out of Southern California, "
//           "our Security Consultants develop security strategies, "
//           "solutions and recommendations, not just for the "
//           "short term."),
// ];