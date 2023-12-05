import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/components/network_image.dart';
import '../../../core/components/review_stars.dart';
import '../../../core/constants/constants.dart';

class ReviewTile extends StatelessWidget {
  const ReviewTile({
    Key? key,
    required this.review,
    required this.starsGiven,
    required this.userName,
    required this.userPicture,
    required this.time,
    required this.isFavourite,
    required this.totalLikes,
  }) : super(key: key);

  final String review;
  final int starsGiven;
  final String userName;
  final String userPicture;
  final String time;
  final bool isFavourite;
  final int totalLikes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDefaults.padding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 60,
            height: 60,
            child: ClipOval(
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: NetworkImageWithLoader(userPicture),
              ),
            ),
          ),
          const SizedBox(width: AppDefaults.padding),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      userName,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: Colors.black),
                    ),
                    const Spacer(),
                    Text(
                      time,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                const ReviewStars(starsGiven: 3),
                const SizedBox(height: 8),
                Text(review),
                const SizedBox(height: AppDefaults.padding),
                Row(
                  children: [
                    Row(
                      children: [
                        isFavourite
                            ? SvgPicture.asset(AppIcons.heartActive)
                            : SvgPicture.asset(AppIcons.heartOutlined),
                        const SizedBox(width: AppDefaults.padding / 2),
                        Text('$totalLikes Like')
                      ],
                    ),
                    const SizedBox(width: AppDefaults.padding),
                    Row(
                      children: [
                        SvgPicture.asset(AppIcons.reply),
                        const SizedBox(width: AppDefaults.padding / 2),
                        const Text('Reply')
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
