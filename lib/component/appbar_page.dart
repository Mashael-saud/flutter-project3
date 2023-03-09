import 'package:flutter/material.dart';

class AppbarPage extends StatefulWidget {
  const AppbarPage({super.key});

  @override
  State<AppbarPage> createState() => _AppbarPageState();
}

class _AppbarPageState extends State<AppbarPage> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.network(
          'https://images.deliveryhero.io/image/talabat/Menuitems/PANCHIT_CANTON_637153134953597675.jpg?width=172&amp;height=172',
          fit: BoxFit.cover,
        ),
      ),
      leading: const Padding(
        padding: EdgeInsets.only(left: 16),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      actions: const [
        CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(
            Icons.ios_share_outlined,
            color: Colors.black,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.search_rounded,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
