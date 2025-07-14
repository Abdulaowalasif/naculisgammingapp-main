import 'package:flutter/material.dart';

class TitleCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String? details;

  const TitleCard({
    super.key,
    required this.title,
    required this.subTitle,
    this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondary),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              title,
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(
              subTitle,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
            ),
          ),
          if (details != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                details!,
                style: Theme.of(
                  context,
                ).textTheme.titleSmall?.copyWith(fontSize: 13),
              ),
            ),
        ],
      ),
    );
  }
}
