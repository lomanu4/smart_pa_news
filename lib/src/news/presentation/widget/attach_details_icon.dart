import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'dart:math' as math;

class AttachdetailsIcon extends StatelessWidget {
  final int numberattach;
  const AttachdetailsIcon({
    Key? key,
    required this.numberattach,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Badge(
          badgeContent: Text(
            numberattach.toString(),
            style: const TextStyle(color: Colors.white),
          ),
          child: Transform.rotate(
            angle: -math.pi / 1.5,
            child: const Icon(
              Icons.attach_file,
              color: Color(0xffA7A7A7),
              size: 30,
            ),
          ),
        )
      ],
    );
  }
}
