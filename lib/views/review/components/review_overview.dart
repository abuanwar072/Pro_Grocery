import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import 'overall_stars.dart';
import 'stars_row.dart';

class ReviewOverview extends StatelessWidget {
  const ReviewOverview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(AppDefaults.padding),
      child: Row(
        children: [
          OverallStars(),
          SizedBox(width: AppDefaults.padding),
          Expanded(
            child: Column(
              children: [
                StarsRow(
                  label: '5 Stars',
                  maxValue: '200',
                  totalPercentage: 80,
                ),
                StarsRow(
                  label: '4 Stars',
                  maxValue: '150',
                  totalPercentage: 60,
                ),
                StarsRow(
                  label: '3 Stars',
                  maxValue: '90',
                  totalPercentage: 40,
                ),
                StarsRow(
                  label: '2 Stars',
                  maxValue: '30',
                  totalPercentage: 20,
                ),
                StarsRow(
                  label: '1 Stars',
                  maxValue: '20',
                  totalPercentage: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
