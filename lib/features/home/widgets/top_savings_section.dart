

import 'package:flutter/material.dart';

class TopSavingsSection extends StatelessWidget {
  const TopSavingsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Top Savings",
            style: TextStyle(
                fontSize: 16,
                color: Colors.black38
            ),
          ),
          ListTile(
            leading: Image.asset("assets/images/shield.png"),
            title: Text(
                "Piggybank",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text("Auto save: Daily weekly or monthly"),
            trailing: ElevatedButton(
              onPressed: () {},
              child: Text("SAVE"),
            ),
            contentPadding: EdgeInsets.zero,
          ),
          ListTile(
            leading: Image.asset("assets/images/lock.png"),
            title: Text(
                "Safelock",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text("Lock funds to avoid temptation"),
            trailing: ElevatedButton(
              onPressed: () {},
              child: Text("LOCK"),
            ),
            contentPadding: EdgeInsets.zero,
          ),
          ListTile(
            leading: Image.asset("assets/images/wallet.png"),
            title: Text(
                "Flex naira",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text("Your emergency funds with interest"),
            trailing: ElevatedButton(
              onPressed: () {},
              child: Text("FUND"),
            ),
            contentPadding: EdgeInsets.zero,
          )
        ],
      ),
    );
  }
}
