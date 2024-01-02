import 'package:flutter/material.dart';
class ReUsableCard extends StatelessWidget {
  const ReUsableCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      margin: EdgeInsets.symmetric(horizontal: 15.0,vertical: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        color: Colors.white
      ),
      child: Column(
        children: [
          ListTile(
            title: Text("Items",style: TextStyle(fontSize: 22)),
            trailing: Text("10",style: TextStyle(fontSize: 22)),
          ),
          Divider(),
          ListTile(
            title: Text("Sub-Total",style: TextStyle(fontSize: 22)),
            trailing: Text("\$60",style: TextStyle(fontSize: 22)),
          ),
          Divider(),
          ListTile(
            title: Text("Delivery",style: TextStyle(fontSize: 22)),
            trailing: Text("\$20",style: TextStyle(fontSize: 22)),
          ),
          Divider(),
          ListTile(
            title: Text("Total",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
            trailing: Text("\$80",style: TextStyle(fontSize: 22,color: Colors.red)),
          ),
          Divider(),

        ],
      ),
    );
  }
}
