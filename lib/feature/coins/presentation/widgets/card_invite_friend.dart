import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/core/theme/app_colors.dart';
import 'package:my_first_app/core/translations/locale_keys.g.dart';

class CardInviteFriend extends StatelessWidget {
  final VoidCallback? onTap;
  const CardInviteFriend({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        tileColor: AppBaseColors.tertiary5Light,
        title: Text(
          LocaleKeys.coins_lb_invite_friend.tr(),
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: AppBaseColors.tertiary5Main,
                fontWeight: FontWeight.bold,
              ),
        ),
        subtitle: Text(
          LocaleKeys.coins_lb_invite_friend_desc.tr(),
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: AppBaseColors.tertiary5Main,
              ),
        ),
        leading: LayoutBuilder(
          builder: (context, constraints) {
            return SizedBox(
              width: constraints.maxHeight,
              child: const Icon(
                Icons.group_add,
                color: AppBaseColors.tertiary5Main,
              ),
            );
          },
        ),
      ),
    );
  }
}
