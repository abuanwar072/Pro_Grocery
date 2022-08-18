import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants/constants.dart';
import '../../../core/themes/app_themes.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        inputDecorationTheme: AppTheme.secondaryInputDecorationTheme,
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppDefaults.padding),
        child: TextField(
          decoration: InputDecoration(
            labelText: 'Search Product',
            suffixIcon: IconButton(
              icon: SvgPicture.asset(
                AppIcons.search,
                width: 24,
                color: AppColors.placeholder,
              ),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
