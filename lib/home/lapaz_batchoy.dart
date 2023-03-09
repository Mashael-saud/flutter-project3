import 'package:flutter/material.dart';
import 'package:project_3/component/appbar_page.dart';

class LapazBatchoy extends StatefulWidget {
  const LapazBatchoy({super.key});

  @override
  State<LapazBatchoy> createState() => _LapazBatchoyState();
}

class _LapazBatchoyState extends State<LapazBatchoy> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          AppbarPage(),
        ],
      ),
    );
  }
}
