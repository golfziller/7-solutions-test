import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/core/translations/locale_keys.g.dart';

class NoCoinsFound extends StatelessWidget {
  const NoCoinsFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        LocaleKeys.coins_lb_no_coins_found.tr(),
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
