import 'package:flutter/material.dart';

import '../../../../core/components/dotted_divider.dart';
import '../../../../core/constants/constants.dart';

class CouponCard extends StatelessWidget {
  const CouponCard({
    Key? key,
    this.couponBackground,
    required this.discounts,
    required this.title,
    required this.expire,
    this.color,
    required this.onTap,
  }) : super(key: key);

  final String? couponBackground;
  final String discounts;
  final String title;
  final String expire;
  final Color? color;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 162,
          child: Container(
            margin: const EdgeInsets.symmetric(
              vertical: AppDefaults.padding / 2,
              horizontal: AppDefaults.padding,
            ),
            decoration: BoxDecoration(
              color: color ?? Colors.blue,
              borderRadius: AppDefaults.borderRadius,
              image: DecorationImage(
                image: AssetImage(
                  couponBackground ?? AppImages.couponBackgrounds[1],
                ),
                // opacity: 0.25,
                fit: BoxFit.cover,
              ),
            ),
            child: Material(
              color: Colors.transparent,
              borderRadius: AppDefaults.borderRadius,
              child: InkWell(
                onTap: onTap,
                borderRadius: AppDefaults.borderRadius,
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(AppDefaults.padding),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              discounts,
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                            ),
                            Text(
                              'Off',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 160,
                      child:
                          DottedDivider(isVertical: true, color: Colors.white),
                    ),
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(AppDefaults.padding),
                        child: Text(
                          title,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                          maxLines: 2,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                        ),
                        child: Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                foregroundColor: AppColors.primary, backgroundColor: Colors.white, padding: const EdgeInsets.symmetric(
                                  vertical: 0,
                                  horizontal: AppDefaults.padding * 2,
                                ),
                                shape: const StadiumBorder(),
                              ),
                              child: Text(
                                'Collect',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                      color: AppColors.primary,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                            const Spacer(),
                            Text(
                              expire,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    color: Colors.white,
                                  ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          bottom: 0,
          child: Container(
            height: 32,
            width: 32,
            decoration: const BoxDecoration(
              color: AppColors.scaffoldBackground,
              shape: BoxShape.circle,
            ),
          ),
        )
      ],
    );
  }
}
