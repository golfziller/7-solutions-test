import 'package:flutter/material.dart';
import 'package:my_first_app/core/theme/app_colors.dart';

class LabelSheet extends StatelessWidget {
  final String subject;
  final String value;
  const LabelSheet({super.key, required this.subject, required this.value});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: subject,
        style: Theme.of(context).textTheme.titleSmall!.copyWith(
            color: AppBaseColors.primaryDark2, fontWeight: FontWeight.bold),
        children: <TextSpan>[
          TextSpan(
            text: value,
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: AppBaseColors.primaryMain),
          ),
        ],
      ),
    );
  }
}
