import 'package:bottomnavtest/models/position.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlinedButton(
        child: const Text('to Page 1'),
        onPressed: () {
          Provider.of<PositionModel>(context, listen: false).toPage1();
        },
      ),
    );
  }
}
