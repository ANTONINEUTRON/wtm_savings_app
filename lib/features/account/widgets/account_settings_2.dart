
import 'package:flutter/material.dart';
import 'package:wtm_savings_app/features/account/widgets/account_settings_item.dart';

class AccountSettings2 extends StatelessWidget {
  const AccountSettings2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.symmetric(horizontal: 16,),
      child: Column(
        children: [
          AccountSettingsItem(
            title: "Refer & Earn",
            icon: Icon(Icons.card_giftcard),
          ),
          Divider(color: Colors.grey.shade300,),
          AccountSettingsItem(
            title: "Withdraw funds",
            icon: Icon(Icons.settings),
          ),
          Divider(color: Colors.grey.shade300,),
          AccountSettingsItem(
            title: "Generate Account Statement",
            icon: Icon(Icons.settings),
          ),
          Divider(color: Colors.grey.shade300,),
          AccountSettingsItem(
            title: "Linked debot cards",
            icon: Icon(Icons.lock),
          ),
          Divider(color: Colors.grey.shade300,),
          AccountSettingsItem(
            title: "Withdrawal Bank",
            icon: Icon(Icons.info),
          ),
          Divider(color: Colors.grey.shade300,),
          AccountSettingsItem(
            title: "View Piggyvest Library",
            icon: Icon(Icons.lock),
          ),
          Divider(color: Colors.grey.shade300,),
          ListTile(
            leading: Icon(Icons.logout,color: Colors.red.shade700,),
            title: Text(
                "Log Out",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red.shade700,
              ),
            ),
          )
        ],
      ),
    );
  }
}
