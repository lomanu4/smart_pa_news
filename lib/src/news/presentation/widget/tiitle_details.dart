import 'package:flutter/material.dart';

class TiitleDetails extends StatelessWidget {
  final String tittle;
  const TiitleDetails({
    Key? key,
    required this.tittle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      tittle,
      maxLines: 4,
      overflow: TextOverflow.ellipsis,
      softWrap: true,
      style: const TextStyle(
          color: Colors.black, fontSize: 32, fontWeight: FontWeight.bold),
    );
  }
}
