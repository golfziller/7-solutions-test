import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CacheImgNetwork extends StatelessWidget {
  final String url;
  final double aspectRatio;

  const CacheImgNetwork({
    super.key,
    required this.url,
    this.aspectRatio = 1,
  });

  @override
  Widget build(BuildContext context) {
    final imageWidget = url.endsWith('.svg')
        ? SvgPicture.network(
            url,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.broken_image),
          )
        : CachedNetworkImage(
            imageUrl: url,
            fit: BoxFit.contain,
            errorWidget: (context, url, error) =>
                const Icon(Icons.broken_image),
          );

    return AspectRatio(
      aspectRatio: aspectRatio,
      child: imageWidget,
    );
  }
}
