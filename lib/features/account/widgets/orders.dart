import 'package:amazon_clone/constants/global_variables.dart';
import 'package:amazon_clone/features/account/widgets/single_product.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
//temp list
  List list = [
    'https://www.maplestore.in/cdn/shop/files/iPhone_15_Pink_PDP_Image_Position-1__en-IN_a15c5f04-7a4a-4fd5-9eff-c4dab378e13e_823x.jpg?v=1701822982',
    'https://www.maplestore.in/cdn/shop/files/iPhone_15_Pink_PDP_Image_Position-1__en-IN_a15c5f04-7a4a-4fd5-9eff-c4dab378e13e_823x.jpg?v=1701822982',
    'https://www.maplestore.in/cdn/shop/files/iPhone_15_Pink_PDP_Image_Position-1__en-IN_a15c5f04-7a4a-4fd5-9eff-c4dab378e13e_823x.jpg?v=1701822982',
    'https://www.maplestore.in/cdn/shop/files/iPhone_15_Pink_PDP_Image_Position-1__en-IN_a15c5f04-7a4a-4fd5-9eff-c4dab378e13e_823x.jpg?v=1701822982',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: const Text(
                'Your Orders',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 15),
              child: const Text(
                'See all',
                style: TextStyle(
                  color: Color(0xFF006064),
                ),
              ),
            ),
          ],
        ),
        //display orders
        Container(
          height: 170,
          padding: EdgeInsets.only(
            left: 10,
            top: 20,
            right: 0,
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return SingleProduct(
                image: list[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
