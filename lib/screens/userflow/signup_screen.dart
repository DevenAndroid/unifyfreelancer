
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:unifyfreelancer/resources/app_assets.dart';
import 'package:unifyfreelancer/resources/app_theme.dart';
import 'package:unifyfreelancer/resources/strings.dart';
import 'package:unifyfreelancer/routers/my_router.dart';
import 'package:unifyfreelancer/widgets/box_textfield.dart';
import 'package:unifyfreelancer/widgets/common_button.dart';
import 'package:unifyfreelancer/widgets/custom_dialogue.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var _formKey = GlobalKey<FormState>();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool acceptTermsOrPrivacy = false;
  RxBool eyeHide = false.obs;

  String dropDownValue = 'All Transactions';

  var items = [
    'India',
    'USA',
    'Uk',
    'Shri Lanka',
    'Pakistan',
  ];

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Stack(
            children: [
              Container(
                color: Colors.white,
                height: deviceHeight,
                width: deviceWidth,
              ),
              Image.asset(AppAssets.loginBg),
              Positioned(
                  top: 55.h,
                  right: 0,
                  left: 0,
                  child: Image.asset(
                    AppAssets.splashLogo,
                    height: 90,
                  )),
              Positioned(
                // top: 200.h,
                right: 16.0,
                left: 16.0,
                bottom: 40.h,
                child: Container(
                    // height: 436.h,
                    // margin: EdgeInsets.symmetric(horizontal: 16.0),
                    padding: EdgeInsets.only(
                        left: 20.h, right: 20.h, top: 20.h, bottom: 10.h),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5.0,
                          ),
                        ]),
                    child: SingleChildScrollView(
                      physics: ScrollPhysics(),
                      child: Column(
                        children: [
                          Text(
                            AppStrings.signUpYourAccount,
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 18.h,
                          ),
                          BoxTextField(
                              obSecure: false.obs,
                              prefix: Icon(
                                Icons.person_outline,
                                color: AppTheme.darkBlueText,
                              ),
                              controller: firstNameController,
                              hintText: AppStrings.firstName.obs,
                              validator: MultiValidator([
                                RequiredValidator(
                                    errorText: 'firstname is required'),
                              ])),
                          SizedBox(
                            height: 12.h,
                          ),
                          BoxTextField(
                              obSecure: false.obs,
                              prefix: Icon(
                                Icons.person_outline,
                                color: AppTheme.darkBlueText,
                              ),
                              controller: lastNameController,
                              hintText: AppStrings.lastName.obs,
                              validator: MultiValidator([
                                RequiredValidator(
                                    errorText: 'lastname is required'),
                              ])),
                          SizedBox(
                            height: 12.h,
                          ),
                          BoxTextField(
                              obSecure: false.obs,
                              prefix: Icon(
                                Icons.mail_outline,
                                color: AppTheme.darkBlueText,
                              ),
                              controller: emailController,
                              hintText: AppStrings.emailID.obs,
                              validator: MultiValidator([
                                RequiredValidator(
                                    errorText:
                                        'firstname or email is required'),
                                EmailValidator(
                                    errorText: 'enter a valid email address')
                              ])),
                          SizedBox(
                            height: 12.h,
                          ),
                          Obx(() {
                            return BoxTextField(
                              obSecure: eyeHide,
                              prefix: Icon(
                                Icons.lock_outline,
                                color: AppTheme.darkBlueText,
                              ),
                              suffixIcon: eyeHide == false
                                  ? Icons.visibility_off_outlined
                                  : Icons.remove_red_eye_outlined,
                              controller: passwordController,
                              hintText: AppStrings.password.obs,
                              validator: MultiValidator([
                                RequiredValidator(
                                    errorText: 'password is required'),
                                MinLengthValidator(8,
                                    errorText:
                                        'password must be at least 8 digits long'),
                                PatternValidator(r'(?=.*?[#?!@$%^&*-])',
                                    errorText:
                                        'passwords must have at least one special character')
                              ]),
                            );
                          }),
                          SizedBox(
                            height: 12.h,
                          ),
                          Container(
                            width: deviceWidth,
                            decoration: BoxDecoration(
                                color: AppTheme.primaryColor.withOpacity(.05),
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color:
                                        AppTheme.primaryColor.withOpacity(.15),
                                    width: 1)),
                            child: CountryPickerDropdown(
                              hint: Text("Select country"
                              ),
                              isExpanded: true,
                              initialValue: 'in',
                              itemBuilder: _buildDropdownItem,
                              onValuePicked: (Country country) {
                                print("${country.name}");
                              },
                            ),
                          ),
                          SizedBox(
                            height: 12.h,
                          ),

                          /*Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Checkbox(
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  value: acceptTermsOrPrivacy,
                                  activeColor: AppTheme.primaryColor,
                                  onChanged: (newValue) {
                                    setState(() {
                                      acceptTermsOrPrivacy = newValue!;
                                    });
                                  }),
                              SizedBox(
                                width: 10.w,
                              ),
                            ],
                          ),*/
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Checkbox(
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  value: acceptTermsOrPrivacy,
                                  activeColor: AppTheme.primaryColor,
                                  onChanged: (newValue) {
                                    setState(() {
                                      acceptTermsOrPrivacy = newValue!;
                                    });
                                  }),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: RichText(
                                  text: TextSpan(
                                    style: const TextStyle(
                                        color: AppTheme.primaryColor,
                                        fontSize: 10),
                                    children: [
                                      const TextSpan(
                                        text:
                                            'Yes, I Understand and agree to the ',
                                        style: TextStyle(
                                          color: Color(0xff172B4D),
                                          fontSize: 12,
                                        ),
                                      ),
                                      TextSpan(
                                          text: 'Unify Terms and of Services ',
                                          style: const TextStyle(
                                            color: AppTheme.primaryColor,
                                            fontSize: 12,
                                            //decoration: TextDecoration.underline,
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              //Get.toNamed(MyRouter.termsScreen);
                                            }),
                                      const TextSpan(
                                        text: 'including the ',
                                        style: TextStyle(
                                          color: Color(0xff172B4D),
                                          fontSize: 12,
                                        ),
                                      ),
                                      TextSpan(
                                          text: 'User Agreement ',
                                          style: const TextStyle(
                                            fontSize: 12,
                                            color: AppTheme.primaryColor,
                                            //decoration: TextDecoration.underline,
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              //Get.toNamed(MyRouter.termsScreen);
                                            }),
                                      const TextSpan(
                                        text: 'and ',
                                        style: TextStyle(
                                          color: Color(0xff172B4D),
                                          fontSize: 12,
                                        ),
                                      ),
                                      TextSpan(
                                          text: 'Privacy Policy',
                                          style: const TextStyle(
                                            fontSize: 12,
                                            //decoration: TextDecoration.underline,
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              //Get.toNamed(MyRouter.termsScreen);
                                            }),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          CommonButton(AppStrings.buttonCreateAccount, () {
                            if (_formKey.currentState!.validate()) {
                              if (acceptTermsOrPrivacy == false) {
                                showError('plz accept conditions.');
                              } else {
                                showError('Call your Api Here.');
                                Get.toNamed(MyRouter.bottomNavbar);
                              }
                            }
                          }, deviceWidth, 50),
                          SizedBox(
                            height: 16.h,
                          ),
                        ],
                      ),
                    )),
              ),
              Positioned(
                  bottom: 10.h,
                  right: 0,
                  left: 0,
                  child: Align(
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: () {
                          Get.offAndToNamed(MyRouter.loginScreen);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              AppStrings.alreadyHaveAnAccount,
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text(
                              AppStrings.buttonLogin,
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: AppTheme.primaryColor),
                            ),
                          ],
                        ),
                      ))),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDropdownItem(Country country) => Container(
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 12.0,
            ),
            CountryPickerUtils.getDefaultFlagImage(country),
            SizedBox(
              width: 8.0,
            ),
            // Text("+${country.phoneCode}(${country.isoCode})"),
            Expanded(
              child: Text(
                "${country.name}",
                style: TextStyle(overflow: TextOverflow.ellipsis),
              ),
            ),
          ],
        ),
      );
}
