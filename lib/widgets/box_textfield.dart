import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unifyfreelancer/resources/app_theme.dart';

class BoxTextField extends StatefulWidget {
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  RxBool? obSecure;
  final bool readOnly;
  final VoidCallback? onTap;
  final VoidCallback? onEditingCompleted;
  final TextInputType keyboardType;
  final ValueChanged<String>? onChanged;
  final FormFieldSetter<String>? onSaved;
  final bool isMulti;
  final bool autofocus;
  final bool enabled;
  final String? errorText;
  final String? labelText;
  final RxString hintText;
  final IconData? suffixIcon;
  final Widget? prefix;

  BoxTextField({
    this.controller,
    this.validator,
    this.keyboardType = TextInputType.text,
    required this.obSecure,
    this.onTap,
    this.isMulti = false,
    this.readOnly = false,
    this.autofocus = false,
    this.errorText,
    required this.hintText,
    this.suffixIcon,
    this.prefix,
    this.enabled = true,
    this.onEditingCompleted,
    this.onChanged,
    this.onSaved,
    this.labelText,
  });

  @override
  State<BoxTextField> createState() => _BoxTextFieldState();
}

class _BoxTextFieldState extends State<BoxTextField> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    RxString hintTextValue = widget.hintText.value.obs;
    var obscureText = '';
    switch (hintTextValue.value) {
      case 'Password':
        {
          obscureText = hintTextValue.value;
        }
        break;
      case 'Current Password':
        {
          obscureText = hintTextValue.value;
        }
        break;
      case 'New Password':
        {
          obscureText = hintTextValue.value;
        }
        break;
      case 'Confirm Password':
        {
          obscureText = hintTextValue.value;
        }
        break;
    }

    return Obx(() {
      return TextFormField(
          onChanged: widget.onChanged,
          onEditingComplete: widget.onEditingCompleted,
          // autofocus: autofocus,
          minLines: widget.isMulti ? 4 : 1,
          maxLines: widget.isMulti ? null : 1,
          onTap: widget.onTap,
          enabled: widget.enabled,
          readOnly: widget.readOnly,
          obscureText:
              widget.hintText == hintTextValue ? widget.obSecure!.value : false,
          keyboardType: widget.keyboardType,
          controller: widget.controller,
          decoration: InputDecoration(
            hintText: widget.hintText.value,
            errorText: widget.errorText,
            labelText: widget.labelText,
            labelStyle: const TextStyle(color: Colors.black),
            prefixIcon: widget.prefix,
            /*suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    widget.obSecure!.value = !widget.obSecure!.value;
                    print("ksajdfg" + widget.obSecure.toString());
                    print("ksajdfgsdsf" + hintTextValue.toString());
                  });
                },
                child: Icon(
                  widget.suffixIcon,
                  color: AppTheme.primaryColor,
                )),*/

            // labelStyle: TextStyle(fontSize: lableFontSize()),
            // labelText: label,
            hintStyle: const TextStyle(color: Colors.blueGrey, fontSize: 15),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: AppTheme.primaryColor, width: 1.0),
              borderRadius: BorderRadius.circular(8),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              borderRadius: BorderRadius.circular(8),
            ),
            border: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: AppTheme.primaryColor, width: 1.0),
                borderRadius: BorderRadius.circular(8.0)),

            // enabledBorder: textFieldfocused(),
            // border: textFieldfocused(),
            // focusedBorder: textFieldfocused(),
            // errorBorder: errorrTextFieldBorder(),
            // focusedErrorBorder: errorrTextFieldBorder(),
          ),
          validator: widget.validator);
    });
  }
}
