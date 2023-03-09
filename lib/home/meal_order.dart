// import 'package:flutter/material.dart';

// class MealOrder extends StatefulWidget {
//   const MealOrder({super.key});

//   @override
//   State<MealOrder> createState() => _MealOrderState();
// }

// class _MealOrderState extends State<MealOrder> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: showModalBottomSheet<void>(
//         context: context,
//         builder: (BuildContext context) {
//           return SizedBox(
//             height: 200,
//             child: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   const Text('Modal BottomSheet'),
//                   ElevatedButton(
//                     child: const Text('Close BottomSheet'),
//                     onPressed: () => Navigator.pop(context),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
