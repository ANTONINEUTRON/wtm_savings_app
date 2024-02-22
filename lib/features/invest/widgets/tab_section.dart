
import 'package:flutter/material.dart';

class TabSection extends StatelessWidget {
  const TabSection({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(

                tabs: [
                  Tab(text: "Active"),
                  Tab(text: "Matured",),
                ]
            ),
            SizedBox(
              height: 400,
              child: TabBarView(
                children: [
                  Container(
                    child: Text("ACTIVE INVESTMENTS"),
                  ),
                  Container(
                    child: Text("MATURED INVESTMENTS"),
                  )
                ],
              ),
            )
          ],
        ),
    );
  }
}
