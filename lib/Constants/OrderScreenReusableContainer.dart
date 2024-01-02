import 'package:flutter/material.dart';
class OrderScreenReusableContainer extends StatelessWidget {
  const OrderScreenReusableContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 10.0),
      child: Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(14.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              spreadRadius: 2.0
            )
          ]
        ),
        child: Row(
          children: [
            Container(
                height: 100,
                width: 120,
                child: Image.network('https://media.istockphoto.com/id/503818102/photo/mediterranean-pizza.jpg?s=612x612&w=0&k=20&c=4JOt9eI5HGK3oE4MUq33-Uqai3FNgYnWlzjfBlyqII0=')),
            Container(
              width: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Hot Pizza",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                  Text("Hot Pizza By KFC Which Is Good And Hygienic To Eat"),
                  Text("\$10",style: TextStyle(fontSize: 18,color: Colors.red),)
                ],
              ),
            ),
            Container(
              width: 40,
              margin: EdgeInsets.symmetric(vertical: 8.0),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(12.0))
              ),
              child: Column(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.remove,color: Colors.white,)),
                  Text("2",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.white,))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
