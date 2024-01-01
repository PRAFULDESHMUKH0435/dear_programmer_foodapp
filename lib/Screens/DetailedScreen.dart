import 'package:dear_programmer_foodapp/Constants/customappbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DetailedScreen extends StatelessWidget {
  String url;
  String title;
  String subtitle;
  int price;
  DetailedScreen({required this.url,required this.title,required this.subtitle,required this.price});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.9),
      body: ListView(
        children: [
          MyCustomAppBar(),
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30.0),bottomRight: Radius.circular(30.0)),
              color: Colors.red
            ),
            child: Image.network(url,fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                    alignment: Alignment.centerRight,
                    child: Text("\$10",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(title,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(14.0)),
                            color: Colors.red
                        ),
                        child: Row(
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.remove,color: Colors.white70,)),
                            Text("1"),
                            IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.white70,)),
                          ],),
                      )
                    ],
                  ),
                ),
                Text(subtitle,style: TextStyle(fontSize: 18),),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Delivery Time :",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                      Row(
                        children: [
                          Icon(CupertinoIcons.clock,color: Colors.red,),
                          SizedBox(width: 5,),
                          Text("30 Minutes",style: TextStyle(fontSize: 18),)
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.green,
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Total Amount :\$${price}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
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
