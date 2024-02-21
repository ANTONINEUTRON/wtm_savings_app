import 'package:flutter/material.dart';
import 'package:wtm_savings_app/features/home/widgets/my_todo_section.dart';
import 'package:wtm_savings_app/features/home/widgets/saving_details_card.dart';
import 'package:wtm_savings_app/features/home/widgets/suggestions_section.dart';
import 'package:wtm_savings_app/features/home/widgets/top_savings_section.dart';
import 'package:wtm_savings_app/features/home/widgets/vetted_opportunities_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello Anthony",
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              "Do more with your finances",
              style: TextStyle(
                fontSize: 12.0,
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            color: Colors.blue,
            onPressed: (){},
            icon: Icon(
              Icons.account_circle,
              size: 40,
            )
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          SavingDetailsCard(
            balance: "\$20000",
            topRightWidget: ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("View savings"),
                  Icon(Icons.arrow_forward),
                ],
              ),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                      vertical: 0,
                      horizontal: 8
                  )
              ),
            ),
          ),
          MyTodoSection(),
          TopSavingsSection(),
          SuggestionsSection(),
          VettedOpportunitiesSection(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        shape: CircleBorder(),
        onPressed: (){
          print("FAB CLICKED");
        },
      ),
    );
  }
}
