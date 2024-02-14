
import 'package:flutter/material.dart';

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
          Container(
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
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("View savings"),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    left: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("My savings"),
                        Text(
                            "*****",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20
                          ),
                        )
                      ],
                    )
                )
              ],
            ),
          )
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
