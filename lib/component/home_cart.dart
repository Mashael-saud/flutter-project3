import 'package:flutter/material.dart';
import 'package:project_3/component/restaurants_card.dart';
import 'package:project_3/home/restaurants.dart';

import '../home/login_page.dart';

class HomeCart extends StatefulWidget {
  const HomeCart({
    super.key,
  });

  @override
  State<HomeCart> createState() => _HomeCartState();
}

class _HomeCartState extends State<HomeCart> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: 450,
            // height: 300,
            decoration: const BoxDecoration(color: Color(0xfffffeee5)),
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Delivering to',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                          Row(
                            children: const [
                              Text(
                                'Al Rabi, King Abdulaziz Road',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: Color(0xfffff5a00),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          const Text(
                            'Hey there!',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const Text('Log in or create an account for'),
                          const Text('a faster ordering experience.'),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              final navigator = Navigator.of(context);
                              navigator.push(MaterialPageRoute(builder: (context) => const LoginPage()));
                            },
                            style: ElevatedButton.styleFrom(backgroundColor: const Color(0xfffff5a00)),
                            child: const Text('Log in'),
                          ),
                        ],
                      ),
                      Image.asset(
                        'asset/images/Asset1-8.png',
                        width: 150,
                        height: 180,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          for (final rest in Restaurant.restaurantInfo)
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RestaurantsCard(
                              restaurant: rest,
                            )));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Food',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text('Order your favorites today'),
                          ],
                        ),
                      ),
                      const Placeholder(
                        fallbackHeight: 120,
                        fallbackWidth: 120,
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
