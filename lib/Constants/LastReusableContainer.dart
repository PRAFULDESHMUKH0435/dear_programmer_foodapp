import 'package:flutter/material.dart';

import '../Screens/DetailedScreen.dart';
class LastReusableContainer extends StatelessWidget {
  String url;
  String title;
  String subtitle;
  int price;
  LastReusableContainer({required this.url,required this.title,required this.subtitle,required this.price});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailedScreen(url: url,title: title,subtitle: subtitle,price: price,)));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 14.0,vertical: 8.0),
        width: double.infinity,
        height: 180,
        decoration:   BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.all(Radius.circular(14.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.white70,
              spreadRadius: 2.0
            )
          ]
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            children: [
              Expanded(
                 flex: 1,
                  child: Image.network(url)),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(title,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                        Icon(Icons.favorite_outline,color: Colors.red,)
                      ],
                    ),
                    Text(subtitle,style: TextStyle(fontSize: 18),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("\$${price}",style: TextStyle(fontSize: 18,color: Colors.red),),
                        Icon(Icons.shopping_cart_outlined,color: Colors.red,)
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
