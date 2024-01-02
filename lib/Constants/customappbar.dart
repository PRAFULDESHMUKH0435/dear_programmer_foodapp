import 'package:dear_programmer_foodapp/Screens/WishListScreen.dart';
import 'package:flutter/material.dart';

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
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>WishListScreen()));
            },
            child: Container(
              child: CircleAvatar(
                radius: 20,
                child: Icon(Icons.notifications),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
