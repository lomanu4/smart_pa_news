import 'package:flutter/material.dart';

class RisposteAllegatoDetails extends StatelessWidget {
  final List<String> risposteallegato;
  const RisposteAllegatoDetails({super.key, required this.risposteallegato});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        itemExtent: 50,
        itemCount: risposteallegato.length,
        itemBuilder: (context, index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                risposteallegato[index],
                style: const TextStyle(
                    color: Color(0xff74CBCE),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const Icon(
                Icons.edit,
                color: Color(0xff999999),
              )
            ],
          );
        },
      ),
    );
  }
}
