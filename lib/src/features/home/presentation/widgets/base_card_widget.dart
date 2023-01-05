import 'package:flutter/material.dart';

class BaseCardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String caption;
  final String image;
  const BaseCardWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.caption,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          // image
          Image.network(
            image,
            width: 128,
            height: 128,
          ),
          // Image.asset('assets/images/flutter_logo.png'),
          const SizedBox(
            width: 20,
          ),
          //text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 3),
                Text(subtitle),
                const SizedBox(height: 3),
                Text(caption),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
