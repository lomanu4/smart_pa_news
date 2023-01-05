import 'package:flutter/material.dart';

class DateTittle extends StatelessWidget {
  final String datecreateat;
  const DateTittle({super.key, required this.datecreateat});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          datecreateat,
          style: const TextStyle(color: Colors.black, fontSize: 24),
        ),
      ],
    );
  }
}
