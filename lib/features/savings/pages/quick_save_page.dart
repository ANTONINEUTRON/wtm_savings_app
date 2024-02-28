import 'package:flutter/material.dart';

class QuickSavePage extends StatelessWidget {
  const QuickSavePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Image.asset(
            "assets/images/piggyvest.png",
            height: 100,
            width: 100,
            alignment: Alignment.centerLeft,
          ),
          SizedBox(height: 24,),
          Text(
              "Quick save",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(),
          Text(
              "Enter an amount",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: " 5000",
              border: OutlineInputBorder(),
              prefix: Text("NGN")
            ),
            keyboardType: TextInputType.number,
          ),
          ElevatedButton(
              onPressed: (){},
              child: Text("Quick Save"),
          )
        ],
      ),
    );
  }
}
