import 'package:flutter/material.dart';

class AppBarDetails extends StatelessWidget implements PreferredSizeWidget {
  final String category;
  const AppBarDetails({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
      title: Center(
          child: Chip(
        label: Text(category),
      )),
      // leadingWidth: 100, // default is 56
      backgroundColor: Colors.white,
      actions: const [
        Icon(
          Icons.bookmark_border,
          color: Colors.black,
        ),
        SizedBox(
          width: 24,
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
