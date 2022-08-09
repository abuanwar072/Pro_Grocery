import 'package:flutter/material.dart';

import 'components/profile_header.dart';
import 'components/profile_menu_options.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF2F2F2),
      child: Column(
        children: const [
          ProfileHeader(),
          ProfileMenuOptions(),
        ],
      ),
    );
  }
}
