import 'package:flutter/material.dart';

class DealOfDay extends StatefulWidget {
  const DealOfDay({super.key});

  @override
  State<DealOfDay> createState() => _DealOfDayState();
}

class _DealOfDayState extends State<DealOfDay> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 10, top: 15),
          child: const Text(
            'Deal of the day',
            style: TextStyle(fontSize: 20),
          ),
        ),
        Image.network(
          'https://images.news18.com/ibnlive/uploads/2022/09/macbook-air-m1-1-16636449823x2.jpg',
          height: 235,
          fit: BoxFit.fill,
        ),
        Container(
          padding: const EdgeInsets.only(left: 15),
          alignment: Alignment.topLeft,
          child: const Text(
            '\$1000',
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 15, top: 5, right: 40),
          child: const Text(
            'Prince',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                'https://www.maplestore.in/cdn/shop/files/iPhone_15_Pink_PDP_Image_Position-1__en-IN_a15c5f04-7a4a-4fd5-9eff-c4dab378e13e_823x.jpg?v=1701822982',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://www.maplestore.in/cdn/shop/files/iPhone_15_Pink_PDP_Image_Position-1__en-IN_a15c5f04-7a4a-4fd5-9eff-c4dab378e13e_823x.jpg?v=1701822982',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://www.maplestore.in/cdn/shop/files/iPhone_15_Pink_PDP_Image_Position-1__en-IN_a15c5f04-7a4a-4fd5-9eff-c4dab378e13e_823x.jpg?v=1701822982',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://www.maplestore.in/cdn/shop/files/iPhone_15_Pink_PDP_Image_Position-1__en-IN_a15c5f04-7a4a-4fd5-9eff-c4dab378e13e_823x.jpg?v=1701822982',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 15).copyWith(left: 15),
          alignment: Alignment.topLeft,
          child: Text(
            'See all deals',
            style: TextStyle(
              color: Colors.cyan[800],
            ),
          ),
        )
      ],
    );
  }
}
