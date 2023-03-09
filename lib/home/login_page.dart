import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              //
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  'talabat',
                  style: TextStyle(color: Color(0xfffff5a00), fontSize: 40, fontWeight: FontWeight.w600),
                ),
                const Text(
                  'Your everyday, right away',
                  style: TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Image.asset(
                  'asset/images/IMG_7336.jpg',
                ),
                const Text(
                  'Log in or create an account',
                  style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Receive rewards and save your details for a faster',
                  style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w500),
                ),
                const Text(
                  'checkout experience.',
                  style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: const Border.fromBorderSide(BorderSide(color: Colors.black, width: 1)),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  width: 400,
                  height: 80,
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Icon(
                          FontAwesomeIcons.google,
                        ),
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      Text('Continue with Google'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: const Border.fromBorderSide(BorderSide(color: Colors.black, width: 1)),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  width: 400,
                  height: 80,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Icon(
                          Icons.facebook,
                          color: Colors.blue[900],
                        ),
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                      const Text('Continue with Facebook'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: const Border.fromBorderSide(BorderSide(color: Colors.black, width: 1)),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  width: 400,
                  height: 80,
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Icon(
                          Icons.apple,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      Text('Continue with Apple'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: const Border.fromBorderSide(BorderSide(color: Colors.black, width: 1)),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  width: 400,
                  height: 80,
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Icon(
                          Icons.email,
                          color: Color(0xfffff5a00),
                        ),
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      Text('Continue with email'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
