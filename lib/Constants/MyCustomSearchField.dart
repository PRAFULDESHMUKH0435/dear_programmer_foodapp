import 'package:flutter/material.dart';
class MyCustomSearchField extends StatelessWidget {
  const MyCustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
      child:TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(14.0))
          ),
          filled: true,
          fillColor: Colors.white70,
          prefixIcon: Icon(Icons.search_outlined,color: Colors.red,),
          hintText: "What Would You Like To Have",
          suffixIcon: Icon(Icons.filter_alt_outlined)
        ),
      ),
    );
  }
}
