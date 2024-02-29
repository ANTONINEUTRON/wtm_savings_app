import 'package:flutter/material.dart';
import 'package:wtm_savings_app/features/savings/widgets/choose_a_wallet_section.dart';

class QuickSavePage extends StatefulWidget {
  const QuickSavePage({super.key});

  @override
  State<QuickSavePage> createState() => _QuickSavePageState();
}

class _QuickSavePageState extends State<QuickSavePage> {
  String amount = "";

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
            onChanged: (value){
              setState(() {
                amount = value;
              });
            },
            decoration: InputDecoration(
                hintText: " 5000",
                border: OutlineInputBorder(),
                prefixText: "NGN",
                prefixStyle: TextStyle(
                  color: Colors.grey
                ),
                hintStyle: TextStyle(
                  color: Colors.grey
                ),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
          ),
          amount.isEmpty
              ? SizedBox(
                height: 16,
              )
              : ChooseAWalletSection(),
          ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
                ),
              ),
              child: Text("Quick Save"),
          )
        ],
      ),
    );
  }
}
