import 'package:flutter/material.dart';
import 'package:project_3/home/meal_page.dart';
import 'package:project_3/home/restaurants.dart';

import 'container_card.dart';

class RestaurantsCard extends StatefulWidget {
  const RestaurantsCard({
    super.key,
    required this.restaurant,
  });
  final Restaurant restaurant;
  @override
  State<RestaurantsCard> createState() => _RestaurantsCardState();
}

class _RestaurantsCardState extends State<RestaurantsCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5))),
            width: 500,
            height: 50,
            child: Column(
              children: [
                Row(
                  children: const [
                    Icon(Icons.arrow_back, size: 30, color: Colors.black),
                    Text(
                      ' Delivering to',
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                    // Icon(
                    //   widget.restaurant,
                    // ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: const [
              ContainerCard(
                icon: Icons.filter_alt_sharp,
                name: 'Filters',
              ),
              ContainerCard(
                icon: Icons.ramen_dining,
                name: 'Cuisines',
              ),
              ContainerCard(
                icon: Icons.search,
                name: 'Search',
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  width: 120,
                  height: 150,
                  decoration: const BoxDecoration(
                      color: Color(0xffff30091), borderRadius: BorderRadius.all(Radius.circular(8))),
                ),
              ],
            ),
          ),
          Row(
            children: const [
              Text(
                'All restaurants',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 260,
              ),
              Icon(Icons.messenger_outline),
              Icon(Icons.menu),
            ],
          ),
          for (final rest in Restaurant.restaurantInfo)
            RestCard(
              restaurant: rest,
            ),
        ],
      ),
    );
  }
}

class RestCard extends StatefulWidget {
  const RestCard({super.key, required this.restaurant});

  final Restaurant restaurant;

  @override
  State<RestCard> createState() => _RestCardState();
}

class _RestCardState extends State<RestCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const MealPage()));
      },
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Row(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Image.network(
                      widget.restaurant.imageUrl,
                      width: 100,
                      height: 80,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.restaurant.name,
                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.restaurant.category,
                          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.grey),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 249, 179, 95),
                            ),
                            Text(widget.restaurant.rating),
                            const Text(
                              '(45)',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.access_time_rounded,
                            ),
                            Text(widget.restaurant.deliveryTime),
                            const Text(
                              '-',
                              style: TextStyle(color: Colors.grey),
                            ),
                            const Icon(Icons.delivery_dining_outlined),
                            Text(widget.restaurant.deliveryCost),
                          ],
                        ),
                      ],
                    ),
                    // const SizedBox(
                    //   width: 50,
                    // ),
                    const Icon(Icons.favorite_border),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
