import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import 'divider.dart';

Future<void> showMyDialog(
    BuildContext context, int allegati, List<String> allegatolist) async {
  return showDialog<void>(
    useSafeArea: true,
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        alignment: Alignment.center,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0))),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Badge(
              badgeContent: Text(
                allegati.toString(),
                style: const TextStyle(color: Colors.white),
              ),
              child: const Icon(
                Icons.attach_file,
                color: Color(0xffA7A7A7),
              ),
            ),
            Text('$allegati Allegati'),
            const SizedBox()
          ],
        ),
        content: SizedBox(
          height: 184.0, // Change as per your requirement
          width: 300.0,

          child: Column(
            children: [
              const DividerDetails(),
              ListView.builder(
                shrinkWrap: true,
                itemExtent: 50,
                itemCount: allegatolist.length,
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        allegatolist[index],
                        style: const TextStyle(
                            color: Color(0xff74CBCE), fontSize: 18),
                      ),
                      const SizedBox(),
                      const Icon(
                        Icons.download,
                        color: Color(0xff666666),
                      )
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}
