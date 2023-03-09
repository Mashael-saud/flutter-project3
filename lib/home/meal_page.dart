import 'package:flutter/material.dart';
import 'package:project_3/home/restaurants.dart';

class MealPage extends StatefulWidget {
  const MealPage({super.key, required this.meals});
  final Meal meals;
  @override
  State<MealPage> createState() => _MealPageState();
}

class _MealPageState extends State<MealPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Image.network(
                    'https://www.foodandwine.com/thmb/pwFie7NRkq4SXMDJU6QKnUKlaoI=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Ultimate-Veggie-Burgers-FT-Recipe-0821-5d7532c53a924a7298d2175cf1d4219f.jpg',
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Placeholder(
                            fallbackHeight: 80,
                            fallbackWidth: 80,
                          ),
                          Text(
                            widget.meals.name,
                            style: const TextStyle(fontSize: 20),
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 10,
                        width: MediaQuery.of(context).size.width,
                        child: const Divider(
                          thickness: 1,
                          color: Colors.red,
                        ),
                      );
                    },
                  ),
                ],
              ),

              // CustomScrollView(
              //   slivers: [
              //     SliverAppBar(
              //       expandedHeight: 200,
              //       flexibleSpace: FlexibleSpaceBar(
              //         background: Image.network(
              //           'https://www.foodandwine.com/thmb/pwFie7NRkq4SXMDJU6QKnUKlaoI=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Ultimate-Veggie-Burgers-FT-Recipe-0821-5d7532c53a924a7298d2175cf1d4219f.jpg',
              //           fit: BoxFit.cover,
              //         ),
              //       ),
              //       leading: const Padding(
              //         padding: EdgeInsets.only(left: 16),
              //         child: CircleAvatar(
              //           backgroundColor: Colors.white,
              //           child: Icon(
              //             Icons.arrow_back,
              //             color: Colors.black,
              //           ),
              //         ),
              //       ),
              //       actions: const [
              //         CircleAvatar(
              //           backgroundColor: Colors.white,
              //           child: Icon(
              //             Icons.ios_share,
              //             color: Colors.black,
              //           ),
              //         ),
              //         Padding(
              //           padding: EdgeInsets.symmetric(horizontal: 16),
              //           child: CircleAvatar(
              //             backgroundColor: Colors.white,
              //             child: Icon(
              //               Icons.search,
              //               color: Colors.black,
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //     SliverFixedExtentList(
              //       itemExtent: 50.0,
              //       delegate: SliverChildBuilderDelegate(
              //         (BuildContext context, int index) {
              //           if (index < 50) {
              //             return Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               children: const [
              //                 Placeholder(
              //                   fallbackHeight: 80,
              //                   fallbackWidth: 80,
              //                 ),
              //                 Text(
              //                   'Falafel',
              //                   style: TextStyle(fontSize: 20),
              //                 ),
              //               ],
              //             );
              //           } else {
              //             return const SizedBox.shrink();
              //           }
              //         },
              //       ),
              //     ),
              //   ],
              // ),
              Positioned(
                top: 150,
                left: 16,
                child: Container(
                  width: 400,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.white,
                      border: Border.all(color: Colors.grey, width: 1)),
                  child: Column(
                    children: [
                      // const Placeholder(
                      //   fallbackHeight: 200,
                      //   fallbackWidth: 200,
                      // ),
                      const Text(
                        'Rokn Hashem',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text('Arabic'),
                      Row(
                        children: const [
                          Icon(
                            Icons.star,
                            color: Color(0xfffffbf00),
                          ),
                          Text('4.1 (51 Ratings)')
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: const [
                              Text('Delivery fee'),
                              SizedBox(
                                height: 40,
                                child: VerticalDivider(
                                  width: 10,
                                  thickness: 1,
                                  color: Colors.grey,
                                ),
                              ),
                              Text('Delivery time'),
                              SizedBox(
                                height: 40,
                                child: VerticalDivider(
                                  width: 10,
                                  thickness: 1,
                                  color: Colors.grey,
                                ),
                              ),
                              Text('Delivery by'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
