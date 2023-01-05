import 'package:flutter/material.dart';

class ContentDetails extends StatelessWidget {
  final String contentText;
  const ContentDetails({super.key, required this.contentText});

  @override
  Widget build(BuildContext context) {
    return Text(
      contentText,
      style: const TextStyle(color: Colors.black, fontSize: 18),
    );
  }
}
