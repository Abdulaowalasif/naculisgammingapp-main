import 'package:flutter/material.dart';

class CustomObject extends StatelessWidget {
  final String image;
  final String title;

  const CustomObject({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image, height: 56, width: 55),
        Text(
          title,
          maxLines: 2,
          style: Theme.of(context).textTheme.bodySmall,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
