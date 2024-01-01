import 'package:flutter/material.dart';
import '../Constants/AnotherReusableContainer.dart';
import '../Constants/LastReusableContainer.dart';
import '../Constants/MyCustomSearchField.dart';
import '../Constants/ReUsableContainer.dart';
import '../Constants/customappbar.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.9),
      body: ListView(
        children: [
          MyCustomAppBar(),
          MyCustomSearchField(),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 5.0),
              child: Text("Categories",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ReUsableContainer(url:'https://banner2.cleanpng.com/20180811/au/kisspng-coca-cola-fizzy-drinks-glass-bottle-coca-cola-png-background-image-png-names-5b6ee742762872.114534851533994818484.jpg'),
                ReUsableContainer(url: 'https://media.istockphoto.com/id/503818102/photo/mediterranean-pizza.jpg?s=612x612&w=0&k=20&c=4JOt9eI5HGK3oE4MUq33-Uqai3FNgYnWlzjfBlyqII0='),
                ReUsableContainer(url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLepUO4DweEU1DytGZekrQl2QELuQslvISnQ&usqp=CAU'),
                ReUsableContainer(url: 'https://w7.pngwing.com/pngs/520/887/png-transparent-biryani-thumbnail.png'),
                ReUsableContainer(url: 'https://static.toiimg.com/thumb/75157473.cms?width=1200&height=900'),
                ReUsableContainer(url: 'https://www.shutterstock.com/image-photo/maharashtrian-saoji-mutton-curry-indian-260nw-2170775785.jpg'),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
              child: Text("Popular",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                AnotherReusableContainer(url: 'https://w7.pngwing.com/pngs/520/887/png-transparent-biryani-thumbnail.png',title: "Biryani",subtitle: "Biryani By Sheru Bhai",price: 200),
                AnotherReusableContainer(url: 'https://banner2.cleanpng.com/20180811/au/kisspng-coca-cola-fizzy-drinks-glass-bottle-coca-cola-png-background-image-png-names-5b6ee742762872.114534851533994818484.jpg',title: "Coke",subtitle: "Coca Cola Bottle Drink ",price: 20),
                AnotherReusableContainer(url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLepUO4DweEU1DytGZekrQl2QELuQslvISnQ&usqp=CAU',title: "Burger",subtitle: " Authentic Burger By KFC",price: 15),
                AnotherReusableContainer(url: 'https://www.shutterstock.com/image-photo/maharashtrian-saoji-mutton-curry-indian-260nw-2170775785.jpg',title: "Mutton Ra-Ra",subtitle: "Sher-E-Punjab  Mutton Ra-Ra",price: 540),
                AnotherReusableContainer(url: 'https://static.toiimg.com/thumb/75157473.cms?width=1200&height=900',title: "Saoji Mutton",subtitle: "Nagpur's Famous Saoji Mutton",price: 90),

              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
              child: Text("Newest",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)),
          Column(
            children: [
              LastReusableContainer(url: 'https://w7.pngwing.com/pngs/520/887/png-transparent-biryani-thumbnail.png',title: "Biryani",subtitle: "Biryani By Sheru Bhai",price: 200),
              LastReusableContainer(url: 'https://banner2.cleanpng.com/20180811/au/kisspng-coca-cola-fizzy-drinks-glass-bottle-coca-cola-png-background-image-png-names-5b6ee742762872.114534851533994818484.jpg',title: "Coke",subtitle: "Coca Cola Bottle Drink ",price: 20),
              LastReusableContainer(url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLepUO4DweEU1DytGZekrQl2QELuQslvISnQ&usqp=CAU',title: "Burger",subtitle: " Authentic Burger By KFC",price: 15),
              LastReusableContainer(url: 'https://www.shutterstock.com/image-photo/maharashtrian-saoji-mutton-curry-indian-260nw-2170775785.jpg',title: "Mutton Ra-Ra",subtitle: "Sher-E-Punjab  Mutton Ra-Ra",price: 540),
              LastReusableContainer(url: 'https://static.toiimg.com/thumb/75157473.cms?width=1200&height=900',title: "Saoji Mutton",subtitle: "Nagpur's Famous Saoji Mutton",price: 90),

            ],
          )
        ],
      ),
      floatingActionButton: InkWell(
        onTap: (){

        },
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.white70,
                spreadRadius: 2.0
              )
            ]
          ),
          child: Icon(Icons.shopping_cart_outlined,color: Colors.red,),
        ),
      ),
      
    );

  }
}
