import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../core/components/skeleton.dart';

class IntroLoginBackgroundWrapper extends StatelessWidget {
  const IntroLoginBackgroundWrapper({
    Key? key,
    required this.imageURL,
  }) : super(key: key);

  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageURL,
      imageBuilder: (context, imageProvider) => _IntroLoginBody(
        image: imageProvider,
      ),
      placeholder: (context, url) => const Skeleton(),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}

class _IntroLoginBody extends StatelessWidget {
  const _IntroLoginBody({
    Key? key,
    required this.image,
  }) : super(key: key);

  final ImageProvider image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black12.withOpacity(0.1),
                  Colors.black12,
                  Colors.black54,
                  Colors.black54,
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
