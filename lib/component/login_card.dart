import 'package:flutter/material.dart';

class LoginCard extends StatelessWidget {
  const LoginCard({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: const Border.fromBorderSide(BorderSide(color: Colors.black, width: 1)),
        borderRadius: BorderRadius.circular(20),
      ),
      width: 400,
      height: 80,
      child: Row(
        children: [
          Text(
            title,
          ),
        ],
      ),
    );
  }
}
