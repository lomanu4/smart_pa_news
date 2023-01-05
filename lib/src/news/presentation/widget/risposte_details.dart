import 'package:flutter/material.dart';

class RisposteDetails extends StatelessWidget {
  const RisposteDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Risposte',
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
