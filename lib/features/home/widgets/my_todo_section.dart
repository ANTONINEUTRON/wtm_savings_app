import 'package:flutter/material.dart';
import 'package:wtm_savings_app/features/home/widgets/my_todo_item.dart';

class MyTodoSection extends StatelessWidget {
  const MyTodoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Header Row Start
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "My Todo",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black38
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      "Hide",
                      style: TextStyle(color: Colors.red.shade700),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: Colors.red.shade700,
                    )
                  ],
                ),
              )
            ],
          ),
          //ListView Start
          SizedBox(
            height: 140,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                MyTodoItem(
                  title: "Add Debit Card",
                  progress: 0.3,
                ),
                MyTodoItem(
                  title: "Enable Autosave",
                  progress: 0.9,
                ),
                MyTodoItem(
                  title: "Enable face id/fingerprint",
                  progress: 0,
                ),
                MyTodoItem(
                    title: "Add a Picture",
                    progress: 0,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
