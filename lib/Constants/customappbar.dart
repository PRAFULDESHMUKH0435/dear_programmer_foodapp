import 'package:flutter/material.dart';

import 'MyDrawer.dart';
class MyCustomAppBar extends StatelessWidget {
  const MyCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (){
            },
            child: Container(
              child: CircleAvatar(
                radius: 20,
                child: Icon(Icons.menu),
              ),
            ),
          ),
          Container(
            child: CircleAvatar(
              radius: 20,
              child: Icon(Icons.notifications),
            ),
          ),

        ],
      ),
    );
  }
}
