import 'package:get/get.dart';
import 'package:unifyfreelancer/Screens/userflow/login_screen.dart';
import 'package:unifyfreelancer/Screens/userflow/signup_screen.dart';

import '../Screens/alerts_screen.dart';
import '../Screens/billing_and_payment_screen.dart';
import '../Screens/chat_screen.dart';
import '../Screens/contact_info_screen.dart';
import '../Screens/contracts_details_screen.dart';
import '../Screens/contracts_screen.dart';
import '../Screens/get_paid_screen.dart';
import '../Screens/home_screen.dart';
import '../Screens/job_details_screen.dart';
import '../Screens/messages_screen.dart';
import '../Screens/my_teams_screen.dart';
import '../Screens/profile_screen.dart';
import '../Screens/profile_setting_screen.dart';
import '../Screens/proposals_screen.dart';
import '../Screens/reports_screen.dart';
import '../Screens/save_jobs_screen.dart';
import '../Screens/settings_screen.dart';
import '../Screens/tax_information_screen.dart';
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
  static var contractsDetailsScreen = "/contractsDetailsScreen";
  static var alertsScreen = "/alertsScreen";
  static var unifyQualificationsScreen = "/unifyQualificationsScreen";
  static var reportsScreen = "/reportsScreen";
  static var messagesScreen = "/messagesScreen";
  static var chatScreen = "/chatScreen";
  static var profileScreen = "/profileScreen";
  static var settingsScreen = "/settingsScreen";
  static var billingAndPaymentScreen = "/billingAndPaymentScreen";
  static var getPaidScreen = "/getPaidScreen";
  static var myTeamsScreen = "/myTeamsScreen";
  static var taxInformationScreen = "/taxInformationScreen";
  static var contactInfoScreen = "/contactInfoScreen";
  static var profileSettingScreen = "/profileSettingScreen";

  static var route = [
    GetPage(name: '/', page: () => const ProfileSettingScreen()),
    GetPage(name: MyRouter.splashScreen, page: () => const SignUpScreen()),
    GetPage(name: MyRouter.loginScreen, page: () => const LoginScreen()),
    GetPage(name: MyRouter.loginScreen, page: () => const LoginScreen()),
    GetPage(name: MyRouter.homeScreen, page: () => const HomeScreen()),
    GetPage(name: MyRouter.saveJobsScreen, page: () => const SaveJobsScreen()),
    GetPage(name: MyRouter.jobDetailsScreen, page: () => const JobDetailsScreen()),
    GetPage(name: MyRouter.proposalsScreen, page: () => const ProposalsScreen()),
    GetPage(name: MyRouter.contractsScreen, page: () => const ContractsScreen()),
    GetPage(name: MyRouter.contractsDetailsScreen, page: () => const ContractsDetailsScreen()),
    GetPage(name: MyRouter.alertsScreen, page: () => const AlertsScreen()),
    GetPage(name: MyRouter.unifyQualificationsScreen, page: () => const UnifyQualificationsScreen()),
    GetPage(name: MyRouter.reportsScreen, page: () => const ReportsScreen()),
    GetPage(name: MyRouter.messagesScreen, page: () => const MessagesScreen()),
    GetPage(name: MyRouter.chatScreen, page: () => const ChatScreen()),
    GetPage(name: MyRouter.profileScreen, page: () => const ProfileScreen()),
    GetPage(name: MyRouter.settingsScreen, page: () => const SettingsScreen()),
    GetPage(name: MyRouter.billingAndPaymentScreen, page: () => const BillingAndPaymentScreen()),
    GetPage(name: MyRouter.getPaidScreen, page: () => const GetPaidScreen()),
    GetPage(name: MyRouter.myTeamsScreen, page: () => const MyTeamsScreen()),
    GetPage(name: MyRouter.taxInformationScreen, page: () => const TaxInformationScreen()),
    GetPage(name: MyRouter.contactInfoScreen, page: () => const ContactInfoScreen()),
    GetPage(name: MyRouter.profileSettingScreen, page: () => const ProfileSettingScreen()),
  ];
}
