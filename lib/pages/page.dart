import 'package:flutter/material.dart';

class CustomPage extends StatelessWidget {
  const CustomPage({Key? key, required this.title, this.onPressed}) : super(key: key);

  final VoidCallback? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlinedButton(
        child: Text(title),
        onPressed: onPressed,
      ),
    );
  }
}
