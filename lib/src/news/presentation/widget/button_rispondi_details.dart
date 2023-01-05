import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ButtonRispondiDetails extends StatelessWidget {
  const ButtonRispondiDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Spacer(),
        ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
            fixedSize: MaterialStateProperty.all(const Size(151, 59)),
            backgroundColor:
                const MaterialStatePropertyAll<Color>(Color(0xff74CBCE)),
          ),
          onPressed: (() {}),
          child: Row(
            children: const [
              Icon(
                Icons.attach_file,
                color: Colors.white,
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: Text(
                  'Rispondi',

                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18), // Eseguire auto layout
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
