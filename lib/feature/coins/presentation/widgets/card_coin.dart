import 'package:flutter/material.dart';
import 'package:my_first_app/core/helper/formatter.dart';
import 'package:my_first_app/core/theme/app_colors.dart';
import 'package:my_first_app/core/ui/ui_helpers.dart';
import 'package:my_first_app/feature/coins/domain/models/get_coins_model.dart';
import 'package:my_first_app/feature/coins/presentation/widgets/cache_img_network.dart';
import 'package:my_first_app/feature/coins/presentation/widgets/tag_percent_change.dart';

class CardCoin extends StatelessWidget {
  final Coin coin;
  const CardCoin({super.key, required this.coin});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: AppBaseColors.secondary3Light,
      title: Text(
        coin.symbol,
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: AppBaseColors.primaryMain,
              fontWeight: FontWeight.bold,
            ),
      ),
      subtitle: Text(
        marketCapToFormat(coin.marketCap),
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: AppBaseColors.primaryLight,
            ),
      ),
      leading: coin.iconUrl.isNotEmpty
          ? Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: CacheImgNetwork(
                url: coin.iconUrl,
              ),
            )
          : const SizedBox.shrink(),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            priceToFormat(
              coin.price,
            ),
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppBaseColors.primaryMain,
                ),
          ),
          hSpace12,
          TagPercentChange(coin: coin),
        ],
      ),
    );
  }
}
