import 'package:flutter/material.dart';

class SavingDetailsCard extends StatelessWidget {
  const SavingDetailsCard({
    super.key,
    required this.topRightWidget,
    required this.balance,
  });

  final Widget topRightWidget;
  final String balance;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(16.0)
      ),
      padding: EdgeInsets.all(16.0),
      height: 160,
      child: Stack(
        children: [
          ElevatedButton.icon(
            onPressed: (){},
            icon: Icon(Icons.add),
            label: Text("Quick save"),
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 8,
                ),
                backgroundColor: Colors.yellow.shade800,
                foregroundColor: Colors.black
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: topRightWidget
          ),
          Positioned(
              bottom: 0,
              left: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "My savings",
                    style: TextStyle(
                      color: Colors.grey.shade200
                    ),
                  ),
                  Text(
                    balance,
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      color: Colors.white,
                    ),
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}