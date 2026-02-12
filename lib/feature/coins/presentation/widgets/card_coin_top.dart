import 'package:flutter/material.dart';
import 'package:my_first_app/core/helper/formatter.dart';
import 'package:my_first_app/core/theme/app_colors.dart';
import 'package:my_first_app/core/ui/ui_helpers.dart';
import 'package:my_first_app/feature/coins/domain/models/get_coins_model.dart';
import 'package:my_first_app/feature/coins/presentation/widgets/cache_img_network.dart';
import 'package:my_first_app/feature/coins/presentation/widgets/tag_percent_change.dart';

class CardCoinTop extends StatelessWidget {
  final List<Coin> coins;
  final bool visible;
  final Function(String) onTap;
  const CardCoinTop(
      {super.key,
      required this.coins,
      this.visible = false,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    if (visible) {
      return const SizedBox.shrink();
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (var coin in coins)
              Expanded(
                child: GestureDetector(
                  onTap: () => onTap(coin.uuid),
                  child: Card(
                    color: AppBaseColors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CacheImgNetwork(
                            url: coin.iconUrl,
                            aspectRatio: 2,
                          ),
                          vSpace8,
                          Text(
                            coin.symbol,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  color: AppBaseColors.primaryMain,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          vSpace4,
                          Text(
                            priceToFormat(coin.price),
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: AppBaseColors.primaryLight),
                            textAlign: TextAlign.center,
                          ),
                          vSpace4,
                          TagPercentChange(coin: coin),
                        ],
                      ),
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
