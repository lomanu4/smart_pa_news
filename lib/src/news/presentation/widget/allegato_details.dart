import 'package:flutter/material.dart';

class AllegatoDetails extends StatelessWidget {
  final List<String> allegato;
  const AllegatoDetails({super.key, required this.allegato});

  @override
  Widget build(BuildContext context) {
    // List<String> allegato = ['Allegato_1.pdf', 'Allegato_2.pdf'];
    return SizedBox(
      height: 108,
      child: ListView.builder(
        itemExtent: 50,
        itemCount: allegato.length,
        itemBuilder: (context, index) {
          return Text(
            allegato[index],
            style: const TextStyle(
                color: Color(0xff74CBCE),
                fontSize: 18,
                fontWeight: FontWeight.bold),
          );
        },
      ),
    );
  }
}
