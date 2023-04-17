import 'package:flutter/material.dart';
import 'package:assets/pages/profile_sheet.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Flutter Project App',
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 23),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(Icons.person),
          onPressed: () {
            showModalBottomSheet(
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
              context: context,
              builder: ((context) => const ProfileSheet()),
            );
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
