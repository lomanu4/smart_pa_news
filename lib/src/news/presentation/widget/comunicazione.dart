import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ComunicazioneDetails extends StatelessWidget {
  const ComunicazioneDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          'Comunicazione',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Spacer(
          flex: 2,
        ),
        Icon(
          Icons.zoom_in,
          size: 32.32,
          color: Color(0xffA7A7A7),
        ),
        SizedBox(
          width: 32.68,
        ),
        Icon(
          Icons.zoom_out,
          size: 32.32,
          color: Color(0xffA7A7A7),
        ),
      ],
    );
  }
}
