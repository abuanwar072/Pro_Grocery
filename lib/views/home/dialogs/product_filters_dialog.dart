import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../components/categories_chip.dart';

class ProductFiltersDialog extends StatelessWidget {
  const ProductFiltersDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(AppDefaults.padding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 56,
              height: 3,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: AppDefaults.borderRadius,
              ),
              margin: const EdgeInsets.all(8),
            ),
            const _FilterHeader(),
            const _SortBy(),
            const _PriceRange(),
            const _CategoriesSelector(),
            const _BrandSelector(),
            _RatingStar(
              totalStarsSelected: 4,
              onStarSelect: (v) {
                debugPrint('Star selected $v');
              },
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(AppDefaults.padding),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Apply Filter'),
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class _RatingStar extends StatelessWidget {
  const _RatingStar({
    Key? key,
    required this.totalStarsSelected,
    required this.onStarSelect,
  }) : super(key: key);

  final int totalStarsSelected;
  final void Function(int) onStarSelect;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDefaults.padding),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Rating Star',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: List.generate(
              /// You cannot add more than 5 star or less than 0 star
              5,
              (index) {
                if (index < totalStarsSelected) {
                  return InkWell(
                    onTap: () => onStarSelect(index + 1),
                    child: const Icon(
                      Icons.star_rounded,
                      color: Color(0xFFFFC107),
                      size: 32,
                    ),
                  );
                } else {
                  return InkWell(
                    onTap: () => onStarSelect(index + 1),
                    child: const Icon(
                      Icons.star_rounded,
                      color: Colors.grey,
                      size: 32,
                    ),
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }
}

class _BrandSelector extends StatelessWidget {
  const _BrandSelector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDefaults.padding),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Brand',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 16,
              runSpacing: 16,
              children: [
                CategoriesChip(
                  isActive: true,
                  label: 'Any',
                  onPressed: () {},
                ),
                CategoriesChip(
                  isActive: false,
                  label: 'Square',
                  onPressed: () {},
                ),
                CategoriesChip(
                  isActive: false,
                  label: 'Beximco Pharma',
                  onPressed: () {},
                ),
                CategoriesChip(
                  isActive: false,
                  label: 'ACI Limited',
                  onPressed: () {},
                ),
                CategoriesChip(
                  isActive: false,
                  label: 'See All',
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _CategoriesSelector extends StatelessWidget {
  const _CategoriesSelector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDefaults.padding),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Categories',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: Wrap(
              alignment: WrapAlignment.start,
              runAlignment: WrapAlignment.spaceAround,
              crossAxisAlignment: WrapCrossAlignment.start,
              spacing: 16,
              runSpacing: 16,
              children: [
                CategoriesChip(
                  isActive: true,
                  label: 'Office Supplies',
                  onPressed: () {},
                ),
                CategoriesChip(
                  isActive: false,
                  label: 'Gardening',
                  onPressed: () {},
                ),
                CategoriesChip(
                  isActive: false,
                  label: 'Vegetables',
                  onPressed: () {},
                ),
                CategoriesChip(
                  isActive: false,
                  label: 'Fish And Meat',
                  onPressed: () {},
                ),
                CategoriesChip(
                  isActive: false,
                  label: 'See All',
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _PriceRange extends StatefulWidget {
  const _PriceRange({
    Key? key,
  }) : super(key: key);

  @override
  State<_PriceRange> createState() => _PriceRangeState();
}

class _PriceRangeState extends State<_PriceRange> {
  RangeValues _currentRangeValues = const RangeValues(40, 80);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDefaults.padding),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Price Range',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
            ),
          ),
          RangeSlider(
            max: 100,
            min: 0,
            labels: RangeLabels(
              _currentRangeValues.start.round().toString(),
              _currentRangeValues.end.round().toString(),
            ),
            onChanged: (RangeValues values) {
              setState(() {
                _currentRangeValues = values;
              });
            },
            activeColor: AppColors.primary,
            inactiveColor: AppColors.gray,
            values: _currentRangeValues,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$0'),
                Text('\$50'),
                Text('\$100'),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _SortBy extends StatelessWidget {
  const _SortBy({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDefaults.padding),
      child: Row(
        children: [
          Text(
            'Sort By',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
          ),
          const Spacer(),
          DropdownButton(
            value: 'Popularity',
            underline: const SizedBox(),
            icon: const Icon(
              Icons.arrow_drop_down,
              color: AppColors.primary,
            ),
            items: const [
              DropdownMenuItem(
                value: 'Popularity',
                child: Text('Popularity'),
              ),
              DropdownMenuItem(
                value: 'Price',
                child: Text('Price'),
              ),
            ],
            onChanged: (v) {},
          )
        ],
      ),
    );
  }
}

class _FilterHeader extends StatelessWidget {
  const _FilterHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 56,
          alignment: Alignment.centerLeft,
          child: SizedBox(
            height: 40,
            width: 40,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero, backgroundColor: AppColors.scaffoldWithBoxBackground,
              ),
              child: const Icon(
                Icons.close,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Text(
          'Filter',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
        ),
        SizedBox(
          width: 56,
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Reset',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.black,
                  ),
            ),
          ),
        )
      ],
    );
  }
}
