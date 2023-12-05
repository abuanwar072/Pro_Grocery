import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/components/app_back_button.dart';
import '../../../core/components/app_settings_tile.dart';
import '../../../core/constants/constants.dart';
import '../../../core/themes/app_themes.dart';

class LanguageSettingsPage extends StatelessWidget {
  const LanguageSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text(
          'Language Settings',
        ),
      ),
      backgroundColor: AppColors.cardColor,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(AppDefaults.padding),
          padding: const EdgeInsets.symmetric(
            horizontal: AppDefaults.padding,
            vertical: AppDefaults.padding * 2,
          ),
          decoration: BoxDecoration(
            color: AppColors.scaffoldBackground,
            borderRadius: AppDefaults.borderRadius,
          ),
          child: const Column(
            children: [
              _SearchField(),
              _SuggestedLanguage(),
              _AllCountries(),
            ],
          ),
        ),
      ),
    );
  }
}

class _AllCountries extends StatelessWidget {
  const _AllCountries({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: AppDefaults.padding),
        Text('All Countries/Regions'),
        SizedBox(height: AppDefaults.padding),
        AppSettingsListTile(label: 'Bangladesh'),
        AppSettingsListTile(label: 'Canada'),
        AppSettingsListTile(label: 'Cuba'),
        AppSettingsListTile(label: 'Spain'),
        AppSettingsListTile(label: 'Australia'),
        AppSettingsListTile(label: 'Greece'),
      ],
    );
  }
}

class _SuggestedLanguage extends StatelessWidget {
  const _SuggestedLanguage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: AppDefaults.padding),
        Text('Suggested'),
        SizedBox(height: AppDefaults.padding),
        AppSettingsListTile(label: 'Bangladesh'),
        AppSettingsListTile(label: 'Canada'),
        AppSettingsListTile(label: 'Australia'),
        AppSettingsListTile(
          label: 'United States',
          trailing: Icon(
            Icons.check,
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}

class _SearchField extends StatelessWidget {
  const _SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        inputDecorationTheme: AppTheme.secondaryInputDecorationTheme,
      ),
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Search',
          hintText: 'Type a word',
          suffixIcon: Padding(
            padding: const EdgeInsets.all(AppDefaults.padding),
            child: SvgPicture.asset(AppIcons.search),
          ),
          suffixIconConstraints: const BoxConstraints(),
        ),
      ),
    );
  }
}
