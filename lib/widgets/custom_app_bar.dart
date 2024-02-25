import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.tag,
  });

  final String title;
  final String tag;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: const Color(0xff0a0e21),
        foregroundColor: const Color(0xffffffff),
        title: Text(title),
        centerTitle: true,
        leading: Hero(
          tag: tag,
          child: const SizedBox(),
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
