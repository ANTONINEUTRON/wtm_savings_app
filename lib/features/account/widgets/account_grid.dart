

import 'package:flutter/material.dart';

class AccountGrid extends StatelessWidget {
  const AccountGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      height: 120,
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 70,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
        ),
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: ListTile(
              title: Text(
                "856839993",
                style: TextStyle(fontWeight: FontWeight.bold,),
              ),
              subtitle: Text("WRTM Bank"),
              trailing: Icon(Icons.arrow_forward_ios),
              contentPadding: EdgeInsets.symmetric(horizontal: 8),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: ListTile(
              title: Text(
                "0",
                style: TextStyle(fontWeight: FontWeight.bold,),
              ),
              subtitle: Text("Piggy points"),
              trailing: Icon(Icons.arrow_forward_ios),
              contentPadding: EdgeInsets.symmetric(horizontal: 8,),
            ),
          )
        ],
      ),
    );
  }
}
