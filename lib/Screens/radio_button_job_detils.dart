import 'package:flutter/material.dart';

import '../resources/app_theme.dart';

class RadioWidget extends StatefulWidget {
  const RadioWidget({Key? key}) : super(key: key);

  @override
  State<RadioWidget> createState() => _RadioButtonsState();
}

class _RadioButtonsState extends State<RadioWidget> {
  String? time;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RadioListTile(
              title: Text(
                "More than 6 Month",
                style: TextStyle(
                    fontSize: 14,
                    color: AppTheme.settingsTextColor),
              ),
              contentPadding: const EdgeInsets.all(0),
              dense: true,
              visualDensity: VisualDensity(
                  horizontal: -4, vertical: -4),
              value: "More than 6 Month",
              groupValue: time,
              onChanged: (value) {
                setState(() {
                  time = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text(
                "3 to 4 month",
                style: TextStyle(
                    fontSize: 14,
                    color: AppTheme.settingsTextColor),
              ),
              contentPadding: const EdgeInsets.all(0),
              dense: true,
              visualDensity: const VisualDensity(
                  horizontal: -4, vertical: -4),
              value: "",
              groupValue: time,
              onChanged: (value) {
                setState(() {
                  time = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text(
                "3 to 6 month",
                style: TextStyle(
                    fontSize: 14,
                    color: AppTheme.settingsTextColor),
              ),
              contentPadding: const EdgeInsets.all(0),
              dense: true,
              visualDensity: const VisualDensity(
                  horizontal: -4, vertical: -4),
              value: "3 to 6 month",
              groupValue: time,
              onChanged: (value) {
                setState(() {
                  time = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text(
                "Less than 1 month",
                style: TextStyle(
                    fontSize: 14,
                    color: AppTheme.settingsTextColor),
              ),
              contentPadding: const EdgeInsets.all(0),
              dense: true,
              visualDensity: const VisualDensity(
                  horizontal: -4, vertical: -4),
              value: "less than 1 month",
              groupValue: time,
              onChanged: (value) {
                setState(() {
                  time = value.toString();
                });
              },
            ),
          ],
        ));
  }
}

