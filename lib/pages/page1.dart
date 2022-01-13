import 'package:bottomnavtest/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlinedButton(
        child: const Text('to Page 2'),
        onPressed: () {
          Provider.of<PositionModel>(context, listen: false).toPage2();
        },
      ),
    );
  }
}
