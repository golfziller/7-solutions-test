import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/core/theme/app_colors.dart';
import 'package:my_first_app/core/translations/locale_keys.g.dart';
import 'package:my_first_app/core/ui/ui_helpers.dart';

class SomethingWentwrong extends StatelessWidget {
  final VoidCallback onRetry;
  const SomethingWentwrong({super.key, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          LocaleKeys.coins_lb_something_went_wrong.tr(),
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.w500,
                color: AppBaseColors.primaryMain,
              ),
        ),
        vSpace12,
        GestureDetector(
          onTap: onRetry,
          child: Text(
            LocaleKeys.coins_lb_try_again.tr(),
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w500,
                  color: AppBaseColors.tertiary5Main,
                ),
          ),
        ),
      ],
    );
  }
}
