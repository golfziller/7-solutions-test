import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/core/theme/app_colors.dart';
import 'package:my_first_app/core/translations/locale_keys.g.dart';

class InputSearch extends StatelessWidget {
  final Function(String) onChanged;
  const InputSearch({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (v) => onChanged(v),
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        hintText: LocaleKeys.coins_lb_hint_search.tr(),
        filled: true,
        hintStyle: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(color: AppBaseColors.primaryMain),
        fillColor: AppBaseColors.primaryShade1,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
