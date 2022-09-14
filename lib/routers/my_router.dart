import 'package:get/get.dart';
import 'package:unifyfreelancer/Screens/userflow/login_screen.dart';
import 'package:unifyfreelancer/Screens/userflow/signup_screen.dart';

import '../Screens/alerts_screen.dart';
import '../Screens/chat_screen.dart';
import '../Screens/contracts_screen.dart';
import '../Screens/home_screen.dart';
import '../Screens/job_details_screen.dart';
import '../Screens/messages_screen.dart';
import '../Screens/proposals_screen.dart';
import '../Screens/reports_screen.dart';
import '../Screens/save_jobs_screen.dart';
import '../Screens/unify_qualifications.dart';

class MyRouter {
  static var splashScreen = "/splashScreen";
  static var onBoarding = "/onBoarding";
  static var signUpScreen = "/signUpScreen";
  static var loginScreen = "/loginScreen";
  static var homeScreen = "/loginScreen";
  static var saveJobsScreen = "/saveJobsScreen";
  static var jobDetailsScreen = "/jobDetailsScreen";
  static var proposalsScreen = "/proposalsScreen";
  static var contractsScreen = "/contractsScreen";
  static var alertsScreen = "/alertsScreen";
  static var unifyQualificationsScreen = "/unifyQualificationsScreen";
  static var reportsScreen = "/reportsScreen";
  static var messagesScreen = "/messagesScreen";
  static var chatScreen = "/chatScreen";

  static var route = [
    GetPage(name: '/', page: () => const ReportsScreen()),
    GetPage(name: MyRouter.splashScreen, page: () => const SignUpScreen()),
    GetPage(name: MyRouter.loginScreen, page: () => const LoginScreen()),
    GetPage(name: MyRouter.loginScreen, page: () => const LoginScreen()),
    GetPage(name: MyRouter.homeScreen, page: () => const HomeScreen()),
    GetPage(name: MyRouter.saveJobsScreen, page: () => const SaveJobsScreen()),
    GetPage(
        name: MyRouter.jobDetailsScreen, page: () => const JobDetailsScreen()),
    GetPage(
        name: MyRouter.proposalsScreen, page: () => const ProposalsScreen()),
    GetPage(
        name: MyRouter.contractsScreen, page: () => const ContractsScreen()),
    GetPage(name: MyRouter.alertsScreen, page: () => const AlertsScreen()),
    GetPage(
        name: MyRouter.unifyQualificationsScreen,
        page: () => const UnifyQualificationsScreen()),
    GetPage(name: MyRouter.reportsScreen, page: () => const ReportsScreen()),
    GetPage(name: MyRouter.messagesScreen, page: () => const MessagesScreen()),
    GetPage(name: MyRouter.chatScreen, page: () => const ChatScreen()),
  ];
}
