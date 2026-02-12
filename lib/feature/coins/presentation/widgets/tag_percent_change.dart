import 'package:flutter/material.dart';
import 'package:my_first_app/core/helper/formatter.dart';
import 'package:my_first_app/core/theme/app_colors.dart';
import 'package:my_first_app/feature/coins/domain/models/get_coins_model.dart';

class TagPercentChange extends StatelessWidget {
  final Coin coin;
  const TagPercentChange({super.key, required this.coin});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: coin.change.startsWith('-') == true
            ? AppBaseColors.errorMain
            : AppBaseColors.successMain,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Text(
        changeToFormat(coin.change),
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(fontWeight: FontWeight.bold, color: AppBaseColors.white),
      ),
    );
  }
}
