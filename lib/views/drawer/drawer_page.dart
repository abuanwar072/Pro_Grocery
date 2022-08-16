import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/components/app_back_button.dart';
import '../../core/constants/app_defaults.dart';
import '../../core/constants/app_icons.dart';
import '../../core/routes/app_routes.dart';
import '../../core/components/app_settings_tile.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('Menu'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppDefaults.padding),
        child: Column(
          children: [
            AppSettingsListTile(
              label: 'Invite Friend',
              trailing: SvgPicture.asset(AppIcons.right),
            ),
            AppSettingsListTile(
              label: 'About Us',
              trailing: SvgPicture.asset(AppIcons.right),
              onTap: () => Navigator.pushNamed(context, AppRoutes.aboutUs),
            ),
            AppSettingsListTile(
              label: 'FAQs',
              trailing: SvgPicture.asset(AppIcons.right),
              onTap: () => Navigator.pushNamed(context, AppRoutes.faq),
            ),
            AppSettingsListTile(
              label: 'Terms & Conditions',
              trailing: SvgPicture.asset(AppIcons.right),
              onTap: () =>
                  Navigator.pushNamed(context, AppRoutes.termsAndConditions),
            ),
            AppSettingsListTile(
              label: 'Help Center',
              trailing: SvgPicture.asset(AppIcons.right),
              onTap: () => Navigator.pushNamed(context, AppRoutes.help),
            ),
            AppSettingsListTile(
              label: 'Rate This App',
              trailing: SvgPicture.asset(AppIcons.right),
              // onTap: () => Navigator.pushNamed(context, AppRoutes.help),
            ),
            AppSettingsListTile(
              label: 'Privacy Policy',
              trailing: SvgPicture.asset(AppIcons.right),
              // onTap: () => Navigator.pushNamed(context, AppRoutes.),
            ),
            AppSettingsListTile(
              label: 'Contact Us',
              trailing: SvgPicture.asset(AppIcons.right),
              onTap: () => Navigator.pushNamed(context, AppRoutes.contactUs),
            ),
            const SizedBox(height: AppDefaults.padding * 3),
            AppSettingsListTile(
              label: 'Logout',
              trailing: SvgPicture.asset(AppIcons.right),
              onTap: () => Navigator.pushNamed(context, AppRoutes.introLogin),
            ),
          ],
        ),
      ),
    );
  }
}
