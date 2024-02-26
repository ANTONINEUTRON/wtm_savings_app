

import 'package:flutter/material.dart';

class AccountSettingsItem extends StatelessWidget {
  const AccountSettingsItem({
    super.key,
    required this.title,
    required this.icon,
    this.trailingIcon = const Icon(Icons.arrow_forward_ios),
  });

  final String title;
  final Widget icon;
  final Widget trailingIcon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: trailingIcon,
    );
  }
}
