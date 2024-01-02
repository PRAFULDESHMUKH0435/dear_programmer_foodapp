import 'package:dear_programmer_foodapp/Constants/customappbar.dart';
import 'package:flutter/material.dart';
import '../Constants/OrderScreenReusableContainer.dart';
import '../Constants/ReUsableCard.dart';
class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.9),
      body: ListView(
        children: [
          MyCustomAppBar(),
          Padding(
            padding: const EdgeInsets.only(left: 12.0,bottom: 5.0,top: 5.0),
            child: Text("Order List",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
          ),
          OrderScreenReusableContainer(),
          OrderScreenReusableContainer(),
          ReUsableCard(),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.green,
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Total Amount :\$80",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5.0,horizontal: 5.0),
              padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 5.0),
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(14.0)),
                  color: Colors.red
              ),
              child: Row(
                children: [
                  Icon(Icons.shopping_cart,color: Colors.white70,),
                  SizedBox(width: 5,),
                  Text("Add To Cart",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white70),textAlign: TextAlign.center,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
