import 'package:flutter/material.dart';

import '../../core/components/network_image.dart';
import '../../core/constants/constants.dart';

class OrderEmpty extends StatelessWidget {
  const OrderEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(flex: 2),
        Padding(
          padding: const EdgeInsets.all(AppDefaults.padding),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: const AspectRatio(
              aspectRatio: 1 / 1,
              child: NetworkImageWithLoader(
                'https://i.imgur.com/EMI82tU.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppDefaults.padding),
          child: Column(
            children: [
              Text(
                'No Orders Yet',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: AppDefaults.padding),
                child: Text(
                  'Sorry you n\'t haven\'t placed\nany order yet.',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(AppDefaults.padding),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(AppDefaults.padding),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Continue'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppDefaults.padding,
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text('Track Order'),
                  ),
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
