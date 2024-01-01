import 'package:flutter/material.dart';
class ReUsableContainer extends StatelessWidget {
  String url;
  ReUsableContainer({required this.url});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 8.0),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(14.0)),
          boxShadow: [
            BoxShadow(spreadRadius: 5.0,color: Colors.white)
          ]
        ),
        child: Image.network(url),
      ),
    );
  }
}
