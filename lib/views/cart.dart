import 'package:flutter/material.dart';
import 'package:groceryapp/subview/product.dart';
import 'package:groceryapp/widgets/search.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.menu,
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
            onPressed: () {},
          ),
        ],
        title: Text(
          "New Order",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          // search(icon: Icon(Icons.shopping_cart)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                GridItem(
                  image: Image.network(
                      "https://imgs.search.brave.com/OvWJgtz1G-vvi8JgETc4y8s3buj7c_cpZWWjUYSJsdM/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTY4/MzcwMTM4L3Bob3Rv/L21hbmdvLmpwZz9z/PTYxMng2MTImdz0w/Jms9MjAmYz1FTnEy/QnJVVjhkTkgycnRo/X1pZQkJ0UzlSV0R3/Q2JJMjVTZnVseGly/bW5RPQ"),
                  Cost: "200",
                  itemName: "Ootty Mango",
                ),
                GridItem(
                  image: Image.network(
                      "https://imgs.search.brave.com/OvWJgtz1G-vvi8JgETc4y8s3buj7c_cpZWWjUYSJsdM/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTY4/MzcwMTM4L3Bob3Rv/L21hbmdvLmpwZz9z/PTYxMng2MTImdz0w/Jms9MjAmYz1FTnEy/QnJVVjhkTkgycnRo/X1pZQkJ0UzlSV0R3/Q2JJMjVTZnVseGly/bW5RPQ"),
                  Cost: "200",
                  itemName: "Ootty Mango",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
