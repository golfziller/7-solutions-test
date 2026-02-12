import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:my_first_app/core/helper/formatter.dart';
import 'package:my_first_app/core/theme/app_colors.dart';
import 'package:my_first_app/core/translations/locale_keys.g.dart';
import 'package:my_first_app/core/ui/ui_helpers.dart';
import 'package:my_first_app/feature/coins/presentation/coin_detail_sheet/coin_detail_sheet_viewmodel.dart';
import 'package:my_first_app/feature/coins/presentation/widgets/cache_img_network.dart';
import 'package:my_first_app/feature/coins/presentation/widgets/label_sheet.dart';
import 'package:my_first_app/feature/coins/presentation/widgets/something_wentwrong.dart';
import 'package:my_first_app/feature/coins/presentation/widgets/tag_percent_change.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CoinDetailSheet extends StackedView<CoinDetailSheetViewModel> {
  final Function(SheetResponse)? completer;
  final SheetRequest request;

  const CoinDetailSheet({
    super.key,
    required this.completer,
    required this.request,
  });

  final double _radius = 24;
  final double _minHeightBox = 300;
  final double _paddingVertical = 16;
  final double _paddingHorizontal = 16;

  @override
  Widget builder(
    BuildContext context,
    CoinDetailSheetViewModel viewModel,
    Widget? child,
  ) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: _paddingVertical),
      constraints: BoxConstraints(minHeight: _minHeightBox),
      decoration: BoxDecoration(
        color: AppBaseColors.informationLight,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(_radius),
          topRight: Radius.circular(_radius),
        ),
      ),
      child: _buildContent(context, viewModel),
    );
  }

  Widget _buildContent(
      BuildContext context, CoinDetailSheetViewModel viewModel) {
    if (viewModel.isBusy) {
      return _buildLoading();
    }

    if (viewModel.coin == null) {
      return _buildError(viewModel);
    }

    return _buildDetail(context, viewModel);
  }

  Widget _buildLoading() {
    return const Center(
      heightFactor: 0,
      child: CupertinoActivityIndicator(),
    );
  }

  Widget _buildError(CoinDetailSheetViewModel viewModel) {
    return Center(
      child: SomethingWentwrong(
        onRetry: () => viewModel.initialData(request),
      ),
    );
  }

  Widget _buildDetail(
      BuildContext context, CoinDetailSheetViewModel viewModel) {
    final coin = viewModel.coin!;

    final Color titleColor = coin.color != null
        ? Color(int.parse('0xff${coin.color!.substring(1)}'))
        : AppBaseColors.primaryMain;

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: coin.iconUrl.isNotEmpty
                ? CacheImgNetwork(
                    url: coin.iconUrl,
                  )
                : const SizedBox.shrink(),
            trailing: TagPercentChange(coin: coin),
            title: Text.rich(
              TextSpan(
                text: coin.name,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: titleColor,
                      fontWeight: FontWeight.bold,
                    ),
                children: [
                  TextSpan(
                    text: ' (${coin.symbol}) ',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: AppBaseColors.mediumGrey,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LabelSheet(
                  subject: LocaleKeys.coins_lb_price.tr(),
                  value: priceToFormat(coin.price),
                ),
                LabelSheet(
                  subject: LocaleKeys.coins_lb_market_cap.tr(),
                  value: marketCapToFormat(coin.marketCap),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: _paddingHorizontal),
            child: Text(
              coin.description ?? LocaleKeys.coins_lb_no_desc.tr(),
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppBaseColors.mediumGrey,
                  ),
            ),
          ),
          if (coin.websiteUrl != null) ...[
            vSpace8,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _paddingHorizontal),
              child: GestureDetector(
                onTap: () => viewModel.openLink(coin.websiteUrl!),
                child: Text(
                  LocaleKeys.coins_lb_read_more.tr(),
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: AppBaseColors.informationMain,
                        decoration: TextDecoration.underline,
                        decorationColor: AppBaseColors.informationMain,
                      ),
                ),
              ),
            ),
            vSpace16,
          ],
        ],
      ),
    );
  }

  @override
  CoinDetailSheetViewModel viewModelBuilder(BuildContext context) {
    return CoinDetailSheetViewModel();
  }

  @override
  void onViewModelReady(CoinDetailSheetViewModel viewModel) {
    SchedulerBinding.instance
        .addPostFrameCallback((_) => viewModel.initialData(request));
  }
}
