import 'package:dear_programmer_foodapp/Screens/DetailedScreen.dart';
import 'package:flutter/material.dart';
class AnotherReusableContainer extends StatelessWidget {
  String url;
  String title;
  String subtitle;
  int price;
   AnotherReusableContainer({required this.url,required this.title,required this.subtitle,required this.price});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailedScreen(url: url,title: title,subtitle: subtitle,price: price,)));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12.0,vertical: 5.0),
        height: 250,
        width: 180,
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.all(Radius.circular(14.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.white70,
              spreadRadius: 2.0,
              offset: Offset(2, 2)
            )
          ]
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 120,
                  width: 100,
                  child:  Image.network(url),
                ),
              ),
              Text(title,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              Text(subtitle,style: TextStyle(fontSize: 18,overflow: TextOverflow.clip),),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$${price}',style: TextStyle(fontSize: 18,color: Colors.red),),
                  Icon(Icons.favorite_outline,color: Colors.red,)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
