import 'package:flutter/material.dart';

class MyTodoItem extends StatelessWidget {
  const MyTodoItem({
    super.key,
    required this.title,
    required this.progress,
    this.onPressed,
  });

  final String title;
  final double progress;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(right: 16),
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
            ),
          ),
          LinearProgressIndicator(
            value: progress,
          ),
          IconButton(
            onPressed: onPressed,
            icon: Icon(Icons.arrow_forward_ios,size: 20,),
            style: IconButton.styleFrom(
              backgroundColor: Colors.grey.shade300,
            ),
          )
        ],
      ),
    );
  }
}
